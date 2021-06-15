library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity PCounter is 
	generic(count  : integer:= 10);
	port( en : in std_logic;
			rst: in std_logic;
			Q  : out std_logic_vector(3 downto 0);
			TC : out std_logic
	);

end PCounter;

architecture Behavioral of PCounter is 

signal counter : integer:= 0;
begin
	process(en, counter)
	begin
		
		if(rising_edge(en)) then
			if(rst = '1') then
				counter <= 0;
				TC <= '0';
				
			elsif(counter = (count-1)) then
				counter  <= 0;
				TC <= '1';
			else
				counter <= counter + 1;
				TC <= '0';
			end if;
		end if;
		
		Q <= std_logic_vector(to_unsigned(counter,4));
		
		end process;
	
end Behavioral;
			