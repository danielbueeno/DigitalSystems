library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegN is 
	generic(n : positive:=4);
	port( input  : in std_logic_vector((n-1) downto 0);
			enable : in std_logic;
			clock  : in std_logic;
			reset  : in std_logic;
			output : out std_logic_vector((n-1) downto 0)
	
	);
end RegN;

architecture Behavioral of RegN is 
	begin
	if()