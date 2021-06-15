library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4N is
	generic(size : positive := 4);

	port(selection : in std_logic_vector(1 downto 0);
	     dataIn0   : in std_logic_vector((size - 1) downto 0);
	     dataIn1   : in std_logic_vector((size - 1) downto 0);
		  dataIn2   : in std_logic_vector((size - 1) downto 0);
		  dataIn3   : in std_logic_vector((size - 1) downto 0);
        dataOut   : out std_logic_vector((size - 1) downto 0)
	);
end Mux4N;

architecture Behavioral of Mux4N is
begin
	process(selection,dataIn0,dataIn1, dataIn2,dataIn3)
	begin
		case selection is
		when "00" => dataOut <= dataIn0;
		when "01" => dataOut <= dataIn1;
		when "10" => dataOut <= dataIn2;
		when "11" => dataOut <= dataIn3;
		end case;
	end process;
	
end Behavioral;