library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;
use work.coprocessor_constants.all;

entity cryptographic_coprocessor is
	port(
		clk         : in  std_logic;
		instruction : in  std_logic_vector(31 downto 0);
		r1, r2      : in  unsigned(31 downto 0);
		output      : out std_logic_vector(31 downto 0)
	);
end entity;

architecture cryptographic_coprocessor_arch of cryptographic_coprocessor is
	signal is_lw, is_next, is_last, is_completed, is_digest, is_reset : std_logic := '0';
	signal is_md5, is_sha1, is_sha256, is_sha512                      : std_logic := '0';

	alias opcode : std_logic_vector(6 downto 0) is instruction(6 downto 0);
	alias funct3 : std_logic_vector(2 downto 0) is instruction(31 downto 29);
	alias funct2 : std_logic_vector(1 downto 0) is instruction(8 downto 7);

	-- MD5
	signal md5_start_new_hash        : std_logic;
	signal md5_write_data_in         : std_logic;
	signal md5_calculate_next_block  : std_logic;
	signal md5_is_waiting_next_block : std_logic;
	signal md5_is_busy               : std_logic;
	signal md5_is_complete           : std_logic;
	signal md5_error                 : md5_error_type;
	signal md5_A_out                 : unsigned(31 downto 0);
	signal md5_B_out                 : unsigned(31 downto 0);
	signal md5_C_out                 : unsigned(31 downto 0);
	signal md5_D_out                 : unsigned(31 downto 0);

	-- SHA1
	signal sha1_start_new_hash        : std_logic;
	signal sha1_write_data_in         : std_logic;
	signal sha1_calculate_next_block  : std_logic;
	signal sha1_is_waiting_next_block : std_logic;
	signal sha1_is_busy               : std_logic;
	signal sha1_is_complete           : std_logic;
	signal sha1_error                 : sha1_error_type;
	signal sha1_H0_out                : unsigned(31 downto 0);
	signal sha1_H1_out                : unsigned(31 downto 0);
	signal sha1_H2_out                : unsigned(31 downto 0);
	signal sha1_H3_out                : unsigned(31 downto 0);
	signal sha1_H4_out                : unsigned(31 downto 0);

	-- SHA256
	signal sha256_start_new_hash        : std_logic;
	signal sha256_write_data_in         : std_logic;
	signal sha256_calculate_next_block  : std_logic;
	signal sha256_is_waiting_next_block : std_logic;
	signal sha256_is_busy               : std_logic;
	signal sha256_is_complete           : std_logic;
	signal sha256_error                 : sha256_error_type;
	signal sha256_H0_out                : unsigned(31 downto 0);
	signal sha256_H1_out                : unsigned(31 downto 0);
	signal sha256_H2_out                : unsigned(31 downto 0);
	signal sha256_H3_out                : unsigned(31 downto 0);
	signal sha256_H4_out                : unsigned(31 downto 0);
	signal sha256_H5_out                : unsigned(31 downto 0);
	signal sha256_H6_out                : unsigned(31 downto 0);
	signal sha256_H7_out                : unsigned(31 downto 0);

	-- SHA512
	signal sha512_start_new_hash        : std_logic;
	signal sha512_write_data_in         : std_logic;
	signal sha512_calculate_next_block  : std_logic;
	signal sha512_is_waiting_next_block : std_logic;
	signal sha512_is_busy               : std_logic;
	signal sha512_is_complete           : std_logic;
	signal sha512_error                 : sha512_error_type;
	signal sha512_H0_out                : unsigned(63 downto 0);
	signal sha512_H1_out                : unsigned(63 downto 0);
	signal sha512_H2_out                : unsigned(63 downto 0);
	signal sha512_H3_out                : unsigned(63 downto 0);
	signal sha512_H4_out                : unsigned(63 downto 0);
	signal sha512_H5_out                : unsigned(63 downto 0);
	signal sha512_H6_out                : unsigned(63 downto 0);
	signal sha512_H7_out                : unsigned(63 downto 0);

begin

	is_lw        <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct3 = FUNCT3_LW else '0';
	is_next      <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct3 = FUNCT3_NEXT else '0';
	is_last      <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct3 = FUNCT3_LAST else '0';
	is_completed <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct3 = FUNCT3_COMPLETED else '0';
	is_digest    <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct3 = FUNCT3_DIGEST else '0';
	is_reset     <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct3 = FUNCT3_RESET else '0';
	is_md5       <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct2 = FUNCT2_MD5 else '0';
	is_sha1      <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct2 = FUNCT2_SHA1 else '0';
	is_sha256    <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct2 = FUNCT2_SHA256 else '0';
	is_sha512    <= '1' when opcode = CRYPTOGRAPHIC_COPROCESSOR_OPCODE and funct2 = FUNCT2_SHA512 else '0';

	-- Start new hash
	md5_start_new_hash    <= is_md5 and is_reset;
	sha1_start_new_hash   <= is_sha1 and is_reset;
	sha256_start_new_hash <= is_sha256 and is_reset;
	sha512_start_new_hash <= is_sha512 and is_reset;

	-- Load data
	md5_write_data_in    <= is_md5 and is_lw;
	sha1_write_data_in   <= is_sha1 and is_lw;
	sha256_write_data_in <= is_sha256 and is_lw;
	sha512_write_data_in <= is_sha512 and is_lw;

	-- Calculate next block
	md5_calculate_next_block    <= is_md5 and (is_next or is_last);
	sha1_calculate_next_block   <= is_sha1 and (is_next or is_last);
	sha256_calculate_next_block <= is_sha256 and (is_next or is_last);
	sha512_calculate_next_block <= is_sha512 and (is_next or is_last);

	md5 : entity work.md5
		port map(
			clk                   => clk,
			start_new_hash        => md5_start_new_hash,
			write_data_in         => md5_write_data_in,
			data_in               => r1,
			data_in_word_position => r2(3 downto 0),
			calculate_next_block  => md5_calculate_next_block,
			is_last_block         => is_last,
			last_block_size       => r1(9 downto 0),
			is_waiting_next_block => md5_is_waiting_next_block,
			is_busy               => md5_is_busy,
			is_complete           => md5_is_complete,
			error                 => md5_error,
			A_out                 => md5_A_out,
			B_out                 => md5_B_out,
			C_out                 => md5_C_out,
			D_out                 => md5_D_out
		);

	sha1 : entity work.sha1
		port map(
			clk                   => clk,
			start_new_hash        => sha1_start_new_hash,
			write_data_in         => sha1_write_data_in,
			data_in               => r1,
			data_in_word_position => r2(3 downto 0),
			calculate_next_block  => sha1_calculate_next_block,
			is_last_block         => is_last,
			last_block_size       => r1(9 downto 0),
			is_waiting_next_block => sha1_is_waiting_next_block,
			is_busy               => sha1_is_busy,
			is_complete           => sha1_is_complete,
			error                 => sha1_error,
			H0_out                => sha1_H0_out,
			H1_out                => sha1_H1_out,
			H2_out                => sha1_H2_out,
			H3_out                => sha1_H3_out,
			H4_out                => sha1_H4_out
		);

	sha256 : entity work.sha256
		port map(
			clk                   => clk,
			start_new_hash        => sha256_start_new_hash,
			write_data_in         => sha256_write_data_in,
			data_in               => r1,
			data_in_word_position => r2(3 downto 0),
			calculate_next_block  => sha256_calculate_next_block,
			is_last_block         => is_last,
			last_block_size       => r1(9 downto 0),
			is_waiting_next_block => sha256_is_waiting_next_block,
			is_busy               => sha256_is_busy,
			is_complete           => sha256_is_complete,
			error                 => sha256_error,
			H0_out                => sha256_H0_out,
			H1_out                => sha256_H1_out,
			H2_out                => sha256_H2_out,
			H3_out                => sha256_H3_out,
			H4_out                => sha256_H4_out,
			H5_out                => sha256_H5_out,
			H6_out                => sha256_H6_out,
			H7_out                => sha256_H7_out
		);

	sha512 : entity work.sha512
		port map(
			clk                   => clk,
			start_new_hash        => sha512_start_new_hash,
			write_data_in         => sha512_write_data_in,
			data_in               => r1,
			data_in_word_position => r2(4 downto 0),
			calculate_next_block  => sha512_calculate_next_block,
			is_last_block         => is_last,
			last_block_size       => r1(10 downto 0),
			is_waiting_next_block => sha512_is_waiting_next_block,
			is_busy               => sha512_is_busy,
			is_complete           => sha512_is_complete,
			error                 => sha512_error,
			H0_out                => sha512_H0_out,
			H1_out                => sha512_H1_out,
			H2_out                => sha512_H2_out,
			H3_out                => sha512_H3_out,
			H4_out                => sha512_H4_out,
			H5_out                => sha512_H5_out,
			H6_out                => sha512_H6_out,
			H7_out                => sha512_H7_out
		);

	-- Update output
	process(funct3, funct2) is
	begin
		case funct3 is
			when FUNCT3_COMPLETED =>
				output(31 downto 1) <= (others => '0');
				case funct2 is
					when FUNCT2_MD5    => output(0) <= md5_is_complete;
					when FUNCT2_SHA1   => output(0) <= sha1_is_complete;
					when FUNCT2_SHA256 => output(0) <= sha256_is_complete;
					when FUNCT2_SHA512 => output(0) <= sha512_is_complete;
					when others        => output(0) <= '0';
				end case;

			when FUNCT3_DIGEST => null;

			when others =>
				output <= (others => '0');
		end case;
	end process;

end architecture cryptographic_coprocessor_arch;
