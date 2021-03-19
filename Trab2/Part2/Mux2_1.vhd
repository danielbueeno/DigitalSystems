library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is 
	port(	sel   : in std_logic;
			inputs: in std_logic_vector(1 downto 0);
			output: out std_logic
	);
	
end Mux2_1;

architecture Behavioral of Mux2_1 is 
begin 
																																																																																																																																																																																																																																																																																																																																																																																																				
    output <= inputs(1) when (sel = '1') else inputs(0);

end Behavioral; 