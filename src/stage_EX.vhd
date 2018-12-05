library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity stage_EX is
	generic(WSIZE : natural);

	port(
		clk            : in std_logic;
		ALU_A, ALU_B   : in std_logic_vector((WSIZE - 1) downto 0);
		instruction_in : in std_logic_vector((WSIZE - 1) downto 0)
	);
end entity stage_EX;

architecture stage_EX_arch of stage_EX is
	signal zero         : std_logic;
	signal Z            : std_logic_vector((WSIZE - 1) downto 0);
	signal ALU_function : FUNCTION_TYPE;

begin

	ALU_control : entity work.ALU_control
		generic map(
			WSIZE => WSIZE
		)
		port map(
			instruction  => instruction_in,
			ALU_function => ALU_function
		);

	ALU : entity work.ALU
		generic map(
			WSIZE => WSIZE
		)
		port map(
			ALU_function => ALU_function,
			shamt        => instruction_in(24 downto 20),
			A            => ALU_A,
			B            => ALU_B,
			Z            => Z,
			zero         => zero
		);

end architecture stage_EX_arch;
