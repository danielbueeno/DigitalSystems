library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DigitalC_NoAjustment is 
	port( CLOCK_50 : in std_logic;
			reset    : in std_logic;
			register0: out std_logic_vector(6 downto 0);
			register1: out std_logic_vector(6 downto 0);
			register2: out std_logic_vector(6 downto 0);
			register3: out std_logic_vector(6 downto 0)
	);
	
end DigitalC_NoAjustment;

architecture Structural of DigitalC_NoAjustment is

signal s_progClk : std_logic;
signal s_timeClk : std_logic;
signal s_dispClk : std_logic;

signal s_pcounter0: std_logic_vector(3 downto 0);
signal s_pcounter1: std_logic_vector(3 downto 0);
signal s_pcounter2: std_logic_vector(3 downto 0);
signal s_pcounter3: std_logic_vector(3 downto 0);
signal s_pcounter4: std_logic_vector(3 downto 0);
signal s_pcounter5: std_logic_vector(3 downto 0);

signal s_tC0: std_logic;
signal s_tC1: std_logic;
signal s_tC2: std_logic;
signal s_tC3: std_logic;
signal s_tC4: std_logic;
signal s_tC5: std_logic;



signal s_mux: std_logic_vector(3 downto 0);
signal s_bin7Dec: std_logic_vector(6 downto 0);

signal s_dispSel: std_logic_vector(1 downto 0);

begin

	dispC: entity work.DispCntrl(BEHAVIOR)
			port map( reset => reset,
						 clock => s_dispClk,
						 s0    => s_dispSel(0),
						 s1    => s_dispSel(1)
			);
	
	sync_gen: entity work.SyncGen(Structural)
				 port map( clk     => CLOCK_50,
							 ProgClk => s_progClk,
							 TimeClk => s_timeClk,
							 DispClk => s_dispClk
				);
				
	pCounter0: entity work.PCounter(Behavioral)
				  port map( en => s_timeCLK,
							   Q  => s_pcounter0,
							   TC => s_tC0
				);
	pCounter1: entity work.PCounter(Behavioral)
				  port map( en => s_tC0,
							   Q  => s_pcounter1,
							   TC => s_tC1
				);
	pCounter2: entity work.PCounter(Behavioral)
				  port map( en => s_tC1,
							   Q  => s_pcounter2,
							   TC => s_tC2
				);
	pCounter3: entity work.PCounter(Behavioral)
				  port map( en => s_tC2,
							   Q  => s_pcounter3,
							   TC => s_tC3
				);
	pCounter4: entity work.PCounter(Behavioral)
			  port map( en => s_tC3,
							Q  => s_pcounter4,
							TC => s_tC4
			);
	pCounter5: entity work.PCounter(Behavioral)
			  port map( en => s_tC4,
							Q  => s_pcounter5,
							TC => s_tC5
			);
	
				
	mux: entity work.Mux2N(Behavioral)
		  generic map(size => 4)
		  port map( selection => s_dispSel,
					   dataIn0   => s_pcounter2,
						dataIn1   => s_pcounter3,
						dataIn2   => s_pcounter4,
						dataIn3   => s_pcounter5,
						dataOut   => s_mux
					);
					
	decoder: entity work.Bin7SegDecoder(Behavioral)
				  port map( binInput  => s_mux,
							   decOut_n  => s_bin7Dec
				);
	
	reg0: entity work.RegisterN(Behavioral)
			port map( clk    => CLOCK_50, 
						 wrEn   => (not s_dispSel(0)) and (not s_dispSel(1)),
						 dataIn => s_bin7Dec,
						 dataOut => register0		 
			);
	reg1: entity work.RegisterN(Behavioral)
			port map( clk    => CLOCK_50, 
						 wrEn   => (s_dispSel(0)) and (not s_dispSel(1)),
						 dataIn => s_bin7Dec,
						 dataOut => register1		 
			);
	reg2: entity work.RegisterN(Behavioral)
			port map( clk    => CLOCK_50, 
						 wrEn   => (not s_dispSel(0)) and (s_dispSel(1)),
						 dataIn => s_bin7Dec,
						 dataOut => register2		 
			);
	reg3: entity work.RegisterN(Behavioral)
			port map( clk    => CLOCK_50, 
						 wrEn   => s_dispSel(0) and s_dispSel(1),
						 dataIn => s_bin7Dec,
						 dataOut => register3		 
			);
		
	
end Structural;