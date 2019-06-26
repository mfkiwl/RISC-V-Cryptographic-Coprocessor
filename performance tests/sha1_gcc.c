
/****** This code was partially extracted from the RFC 6234 *****/

/***************** See RFC 6234 for details. *******************/
/* Copyright (c) 2011 IETF Trust and the persons identified as */
/* authors of the code.  All rights reserved.                  */

/*
   Copyright (c) 2011 IETF Trust and the persons identified as
   authors of the code.  All rights reserved.

   Redistribution and use in source and binary forms, with or
   without modification, are permitted provided that the following
   conditions are met:

   - Redistributions of source code must retain the above
     copyright notice, this list of conditions and
     the following disclaimer.

   - Redistributions in binary form must reproduce the above
     copyright notice, this list of conditions and the following
     disclaimer in the documentation and/or other materials provided
     with the distribution.

   - Neither the name of Internet Society, IETF or IETF Trust, nor
     the names of specific contributors, may be used to endorse or
     promote products derived from this software without specific
     prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
   CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
   INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
   DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
   NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
   LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
   HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
   OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
   EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include <stdint.h>

#define SHA_Ch(x, y, z) (((x) & (y)) ^ ((~(x)) & (z)))
#define SHA_Maj(x, y, z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define SHA_Parity(x, y, z) ((x) ^ (y) ^ (z))

/*
 *  These constants hold size information for each of the SHA
 *  hashing operations
 */
enum {
    SHA1_Message_Block_Size = 64,
    SHA224_Message_Block_Size = 64,
    SHA256_Message_Block_Size = 64,
    SHA384_Message_Block_Size = 128,
    SHA512_Message_Block_Size = 128,
    USHA_Max_Message_Block_Size = SHA512_Message_Block_Size,
    SHA1HashSize = 20,
    SHA224HashSize = 28,
    SHA256HashSize = 32,
    SHA384HashSize = 48,
    SHA512HashSize = 64,
    USHAMaxHashSize = SHA512HashSize,
    SHA1HashSizeBits = 160,
    SHA224HashSizeBits = 224,
    SHA256HashSizeBits = 256,
    SHA384HashSizeBits = 384,
    SHA512HashSizeBits = 512,
    USHAMaxHashSizeBits = SHA512HashSizeBits
};

/*
 *  This structure will hold context information for the SHA-1
 *  hashing operation.
 */
typedef struct SHA1Context {
    uint32_t Intermediate_Hash[SHA1HashSize / 4]; /* Message Digest */

    uint32_t Length_High; /* Message length in bits */
    uint32_t Length_Low;  /* Message length in bits */

    int_least16_t Message_Block_Index; /* Message_Block array index */
    /* 512-bit message blocks */
    uint8_t Message_Block[SHA1_Message_Block_Size];

    int Computed;  /* Is the hash computed? */
    int Corrupted; /* Cumulative corruption code */
} SHA1Context;

/*
 *  All SHA functions return one of these values.
 */
enum {
    shaSuccess = 0,
    shaNull,
    /* Null pointer parameter */
    shaInputTooLong,
    /* input data too long */
    shaStateError,
    /* called Input after FinalBits or Result */
    shaBadParam /* passed a bad parameter */
};

/*
 *  Define the SHA1 circular left shift macro
 */
#define SHA1_ROTL(bits, word) (((word) << (bits)) | ((word) >> (32 - (bits))))

/*
 * Add "length" to the length.
 * Set Corrupted when overflow has occurred.
 */
static uint32_t addTemp;
#define SHA1AddLength(context, length)                                         \
    (addTemp = (context)->Length_Low,                                          \
     (context)->Corrupted = (((context)->Length_Low += (length)) < addTemp) && \
                                    (++(context)->Length_High == 0)            \
                                ? shaInputTooLong                              \
                                : (context)->Corrupted)

/* Local Function Prototypes */
static void SHA1ProcessMessageBlock(SHA1Context *context);
static void SHA1Finalize(SHA1Context *context, uint8_t Pad_Byte);
static void SHA1PadMessage(SHA1Context *context, uint8_t Pad_Byte);

/*
 *  SHA1Reset
 *
 *  Description:
 *      This function will initialize the SHA1Context in preparation
 *      for computing a new SHA1 message digest.
 *
 *  Parameters:
 *      context: [in/out]
 *          The context to reset.
 *
 *  Returns:
 *      sha Error Code.
 *
 */
int SHA1Reset(SHA1Context *context) {
    if (!context)
        return shaNull;

    context->Length_High = context->Length_Low = 0;
    context->Message_Block_Index = 0;

    /* Initial Hash Values: FIPS 180-3 section 5.3.1 */
    context->Intermediate_Hash[0] = 0x67452301;
    context->Intermediate_Hash[1] = 0xEFCDAB89;
    context->Intermediate_Hash[2] = 0x98BADCFE;
    context->Intermediate_Hash[3] = 0x10325476;
    context->Intermediate_Hash[4] = 0xC3D2E1F0;

    context->Computed = 0;
    context->Corrupted = shaSuccess;

    return shaSuccess;
}

/*
 *  SHA1Input
 *
 *  Description:
 *      This function accepts an array of octets as the next portion
 *      of the message.
 *
 *  Parameters:
 *      context: [in/out]
 *          The SHA context to update.
 *      message_array[ ]: [in]
 *          An array of octets representing the next portion of
 *          the message.
 *      length: [in]
 *          The length of the message in message_array.
 *
 *  Returns:
 *      sha Error Code.
 *
 */
int SHA1Input(SHA1Context *context, const uint8_t *message_array,
              unsigned length) {
    if (!context)
        return shaNull;
    if (!length)
        return shaSuccess;
    if (!message_array)
        return shaNull;
    if (context->Computed)
        return context->Corrupted = shaStateError;
    if (context->Corrupted)
        return context->Corrupted;

    while (length--) {
        context->Message_Block[context->Message_Block_Index++] = *message_array;

        if ((SHA1AddLength(context, 8) == shaSuccess) &&
            (context->Message_Block_Index == SHA1_Message_Block_Size))
            SHA1ProcessMessageBlock(context);

        message_array++;
    }

    return context->Corrupted;
}

/*
 * SHA1FinalBits
 *
 * Description:
 *   This function will add in any final bits of the message.
 *
 * Parameters:
 *   context: [in/out]
 *     The SHA context to update.
 *   message_bits: [in]
 *     The final bits of the message, in the upper portion of the
 *     byte.  (Use 0b###00000 instead of 0b00000### to input the
 *     three bits ###.)
 *   length: [in]
 *     The number of bits in message_bits, between 1 and 7.
 *
 * Returns:
 *     sha   Error   Code .
 */
int SHA1FinalBits(SHA1Context *context, uint8_t message_bits,
                  unsigned int length) {
    static uint8_t masks[8] = {
        /* 0 0b00000000 */ 0x00, /* 1 0b10000000 */ 0x80,
        /* 2 0b11000000 */ 0xC0, /* 3 0b11100000 */ 0xE0,
        /* 4 0b11110000 */ 0xF0, /* 5 0b11111000 */ 0xF8,
        /* 6 0b11111100 */ 0xFC, /* 7 0b11111110 */ 0xFE};

    static uint8_t markbit[8] = {
        /* 0 0b10000000 */ 0x80, /* 1 0b01000000 */ 0x40,
        /* 2 0b00100000 */ 0x20, /* 3 0b00010000 */ 0x10,
        /* 4 0b00001000 */ 0x08, /* 5 0b00000100 */ 0x04,
        /* 6 0b00000010 */ 0x02, /* 7 0b00000001 */ 0x01};

    if (!context)
        return shaNull;
    if (!length)
        return shaSuccess;
    if (context->Corrupted)
        return context->Corrupted;
    if (context->Computed)
        return context->Corrupted = shaStateError;
    if (length >= 8)
        return context->Corrupted = shaBadParam;

    SHA1AddLength(context, length);
    SHA1Finalize(context,
                 (uint8_t)((message_bits & masks[length]) | markbit[length]));

    return context->Corrupted;
}

/*
 * SHA1Result
 *
 * Description:
 *   This function will return the 160-bit message digest
 *   into the Message_Digest array provided by the caller.
 *   NOTE:
 *    The first octet of hash is stored in the element with index 0,
 *      the last octet of hash in the element with index 19.
 *
 * Parameters:
 *   context: [in/out]
 *     The context to use to calculate the SHA-1 hash.
 *   Message_Digest[ ]: [out]
 *     Where the digest is returned.
 *
 * Returns:
 *   sha Error Code.
 *
 */
int SHA1Result(SHA1Context *context, uint8_t Message_Digest[SHA1HashSize]) {
    int i;

    if (!context)
        return shaNull;
    if (!Message_Digest)
        return shaNull;
    if (context->Corrupted)
        return context->Corrupted;

    if (!context->Computed)
        SHA1Finalize(context, 0x80);

    for (i = 0; i < SHA1HashSize; ++i)
        Message_Digest[i] = (uint8_t)(context->Intermediate_Hash[i >> 2] >>
                                      (8 * (3 - (i & 0x03))));

    return shaSuccess;
}

/*
 * SHA1ProcessMessageBlock
 *
 * Description:
 *   This helper function will process the next 512 bits of the
 *   message stored in the Message_Block array.
 *
 * Parameters:
 *   context: [in/out]
 *     The SHA context to update.
 *
 * Returns:
 *   Nothing.
 *
 * Comments:
 *   Many of the variable names in this code, especially the
 *   single character names, were used because those were the
 *   names used in the Secure Hash Standard.
 */
static void SHA1ProcessMessageBlock(SHA1Context *context) {
    /* Constants defined in FIPS 180-3, section 4.2.1 */
    const uint32_t K[4] = {0x5A827999, 0x6ED9EBA1, 0x8F1BBCDC, 0xCA62C1D6};
    int t;                  /* Loop counter */
    uint32_t temp;          /* Temporary word value */
    uint32_t W[80];         /* Word sequence */
    uint32_t A, B, C, D, E; /* Word buffers */

    /*
     * Initialize the first 16 words in the array W
     */
    for (t = 0; t < 16; t++) {
        W[t] = ((uint32_t)context->Message_Block[t * 4]) << 24;
        W[t] |= ((uint32_t)context->Message_Block[t * 4 + 1]) << 16;
        W[t] |= ((uint32_t)context->Message_Block[t * 4 + 2]) << 8;
        W[t] |= ((uint32_t)context->Message_Block[t * 4 + 3]);
    }

    for (t = 16; t < 80; t++)
        W[t] = SHA1_ROTL(1, W[t - 3] ^ W[t - 8] ^ W[t - 14] ^ W[t - 16]);

    A = context->Intermediate_Hash[0];
    B = context->Intermediate_Hash[1];
    C = context->Intermediate_Hash[2];
    D = context->Intermediate_Hash[3];
    E = context->Intermediate_Hash[4];

    for (t = 0; t < 20; t++) {
        temp = SHA1_ROTL(5, A) + SHA_Ch(B, C, D) + E + W[t] + K[0];
        E = D;
        D = C;
        C = SHA1_ROTL(30, B);
        B = A;
        A = temp;
    }

    for (t = 20; t < 40; t++) {
        temp = SHA1_ROTL(5, A) + SHA_Parity(B, C, D) + E + W[t] + K[1];
        E = D;
        D = C;
        C = SHA1_ROTL(30, B);
        B = A;
        A = temp;
    }

    for (t = 40; t < 60; t++) {
        temp = SHA1_ROTL(5, A) + SHA_Maj(B, C, D) + E + W[t] + K[2];
        E = D;
        D = C;
        C = SHA1_ROTL(30, B);
        B = A;
        A = temp;
    }

    for (t = 60; t < 80; t++) {
        temp = SHA1_ROTL(5, A) + SHA_Parity(B, C, D) + E + W[t] + K[3];
        E = D;
        D = C;
        C = SHA1_ROTL(30, B);
        B = A;
        A = temp;
    }

    context->Intermediate_Hash[0] += A;
    context->Intermediate_Hash[1] += B;
    context->Intermediate_Hash[2] += C;
    context->Intermediate_Hash[3] += D;
    context->Intermediate_Hash[4] += E;
    context->Message_Block_Index = 0;
}

/*
 * SHA1Finalize
 *
 * Description:
 *   This helper function finishes off the digest calculations.
 *
 * Parameters:
 *   context: [in/out]
 *     The SHA context to update.
 *   Pad_Byte: [in]
 *     The last byte to add to the message block before the 0-padding
 *     and length.  This will contain the last bits of the message
 *     followed by another single bit.  If the message was an
 *     exact multiple of 8-bits long, Pad_Byte will be 0x80.
 *
 * Returns:
 *   sha Error Code.
 *
 */
static void SHA1Finalize(SHA1Context *context, uint8_t Pad_Byte) {
    int i;
    SHA1PadMessage(context, Pad_Byte);
    /* message may be sensitive, clear it out */
    for (i = 0; i < SHA1_Message_Block_Size; ++i)
        context->Message_Block[i] = 0;
    context->Length_High = 0; /* and clear length */
    context->Length_Low = 0;
    context->Computed = 1;
}

/*
 * SHA1PadMessage
 *
 * Description:
 *   According to the standard, the message must be padded to the next
 *   even multiple of 512 bits.  The first padding bit must be a '1'.
 *   The last 64 bits represent the length of the original message.
 *   All bits in between should be 0.  This helper function will pad
 *   the message according to those rules by filling the Message_Block
 *   array accordingly.  When it returns, it can be assumed that the
 *   message digest has been computed.
 *
 * Parameters:
 *   context: [in/out]
 *     The context to pad.
 *   Pad_Byte: [in]
 *     The last byte to add to the message block before the 0-padding
 *     and length.  This will contain the last bits of the message
 *     followed by another single bit.  If the message was an
 *     exact multiple of 8-bits long, Pad_Byte will be 0x80.
 *
 * Returns:
 *   Nothing.
 */
static void SHA1PadMessage(SHA1Context *context, uint8_t Pad_Byte) {
    /*
     * Check to see if the current message block is too small to hold
     * the initial padding bits and length.  If so, we will pad the
     * block, process it, and then continue padding into a second
     * block.
     */
    if (context->Message_Block_Index >= (SHA1_Message_Block_Size - 8)) {
        context->Message_Block[context->Message_Block_Index++] = Pad_Byte;
        while (context->Message_Block_Index < SHA1_Message_Block_Size)
            context->Message_Block[context->Message_Block_Index++] = 0;

        SHA1ProcessMessageBlock(context);
    } else
        context->Message_Block[context->Message_Block_Index++] = Pad_Byte;

    while (context->Message_Block_Index < (SHA1_Message_Block_Size - 8))
        context->Message_Block[context->Message_Block_Index++] = 0;

    /*
     * Store the message length as the last 8 octets
     */
    context->Message_Block[56] = (uint8_t)(context->Length_High >> 24);
    context->Message_Block[57] = (uint8_t)(context->Length_High >> 16);
    context->Message_Block[58] = (uint8_t)(context->Length_High >> 8);
    context->Message_Block[59] = (uint8_t)(context->Length_High);
    context->Message_Block[60] = (uint8_t)(context->Length_Low >> 24);
    context->Message_Block[61] = (uint8_t)(context->Length_Low >> 16);
    context->Message_Block[62] = (uint8_t)(context->Length_Low >> 8);
    context->Message_Block[63] = (uint8_t)(context->Length_Low);

    SHA1ProcessMessageBlock(context);
}

int main(int argc, char **argv) {
    char *message = "abc";

    // strlen
    unsigned len;
    for (len = 0; message[len] != '\0'; len++)
        ;

    SHA1Context context;
    uint8_t Message_Digest[SHA1HashSize];

    SHA1Reset(&context);
    SHA1Input(&context, (uint8_t *)message, len);
    SHA1Result(&context, Message_Digest);
}