library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity AdderN is
	generic(n  : positive := 4);
	port(	operand0 : in std_logic_vector((n-1) downto 0);
			operand1 : in std_logic_vector((n-1) downto 0);
			result   : out std_logic((n-1) downto 0)
	);
	
end AdderN;

architecture Behavioral of Adder4 is
	begin
		result <= operand0 + operand1;
		
end Behavioral;