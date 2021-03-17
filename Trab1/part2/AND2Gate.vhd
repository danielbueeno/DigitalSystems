-- Libraries
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--Interface(portos)
entity AND2Gate is
	port( inport0 : in std_logic;
			inport1 : in std_logic;
			outport : out std_logic);
end AND2Gate;

--Architecture (implementation - funcionality description)
architecture Behavioral of AND2Gate is
begin

	outport <= inport0 and inport1;
	
end Behavioral;
