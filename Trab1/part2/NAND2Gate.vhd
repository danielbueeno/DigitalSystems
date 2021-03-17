library IEEE;
use IEEE.STD_LOGIC_1164.all;

--Entity
entity NAND2Gate is
	port( inport0 : in std_logic;
			inport1 : in std_logic;
			outport : out std_logic);
			
end NAND2Gate;

--Architecture
architecture Structural of NAND2Gate is 

	signal s_andout : std_logic;

begin
	and_gate: entity Work.AND2Gate(Behavioral)
				port map( inport0 => inport0,
							 inport1 => inport1,
							 outport => s_andout);
							 
	not_gate: entity Work.NOTGate(Behavioral)
				port map( inport => s_andout,
							 outport => outport);

end Structural;