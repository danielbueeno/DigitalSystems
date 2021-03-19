library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
	port( sel    : in std_logic_vector(1 downto 0);
			inputs : in std_logic_vector(3 downto 0);
			output : out std_logic
	);

end Mux4_1;

architecture Behavioral of Mux4_1 is 
begin

	with sel select
	output <= inputs(0) when "00",
				 inputs(1) when "01",
				 inputs(2) when "10",
				 inputs(3) when "11",
				 '0' when others;
				 
end Behavioral;
