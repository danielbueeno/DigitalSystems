library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegisterN is 
	generic(N	  :positive := 7);
	port( clk     : in std_logic;
			wrEn    : in std_logic;
			rst     : in std_logic;
			dataIn  : in std_logic_vector((N-1) downto 0);
			dataOut : out std_logic_vector((N-1) downto 0)
	);
end RegisterN;

architecture Behavioral of RegisterN is 
begin
	process(clk, rst)
	begin
		if(rising_edge(clk)) then
			if(rst = '1') then
				dataOut <= "1000000";
			elsif(wrEn = '1') then 
				dataOut <= dataIn;
			end if;
		end if;
	end process;

end Behavioral;