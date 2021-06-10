library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Encoder4_2En is
	port( enable  : in std_logic;
	      inputs  : in std_logic_vector(3 downto 0);
	      outputs : out std_logic_vector(1 downto 0)
	);
end Encoder4_2En;

architecture Behavioral of Encoder4_2En is 
begin
	process(enable, inputs)
	begin
		if(enable = '0') then
			outputs <="00";
		else
			case inputs is
			when "0001" => outputs <= "00"; 
			when "0010" => outputs <= "01"; 
			when "0100" => outputs <= "10"; 
			when "1000" => outputs <= "11"; 
			when others => outputs <= "ZZ";
			end case;
		end if;
	end process;
end Behavioral;