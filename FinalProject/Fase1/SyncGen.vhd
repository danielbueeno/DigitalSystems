library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SyncGen is 
	port( clk    	 : in std_logic;
			ProgClk   : out std_logic;
			TimeClk   : out std_logic;
			DispClk : out std_logic
	);
	
end SyncGen;

architecture Structural of SyncGen is 
begin 

	p_Clk: entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 5000000)
				port map( clkIn   => clk,
							 clkOut  => ProgClk 
				);
	t_Clk: entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 10)
				port map( clkIn   => clk,
							 clkOut  => TimeClk 
				);
	d_Clk: entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 5)
				port map( clkIn   => clk,
							 clkOut  => DispClk 
				);

end Structural;