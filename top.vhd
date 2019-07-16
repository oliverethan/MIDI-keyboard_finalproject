library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top is 
	port(
		serial: in std_logic;
		sample : out std_logic

	--	note   : out std_logic_vector(7 downto 0);
		--on_off : out std_logic
		--idle_sig : out std_logic;--
		--data_sig : out std_logic;--
		--status_sig : out std_logic--
		);
end top;

architecture synth of top is

component HSOSC is
	generic (
		CLKHF_DIV : String := "0b00");
	port(
		CLKHFPU : in std_logic := 'X'; 
		CLKHFEN : in std_logic := 'X'; 
		CLKHF   : out std_logic := 'X'   
		); 
end component;

component pll is
    port(
		 outglobal_o  : out std_logic;
		 outcore_o    : out std_logic;
		 ref_clk_i    : in std_logic;
		 rst_n_i      : in std_logic
		 );
end component;

component midi_reciever is
	port(
		clk    : in  std_logic;
		serial : in  std_logic;
		valid  : out std_logic;
		byte   : out std_logic_vector(7 downto 0)
		);
	end component;
	
	
component midi_interpreter is
	port(
		clk    : in  std_logic;
		valid  : in std_logic;
		byte   : in std_logic_vector(7 downto 0);
		note   : out std_logic_vector(7 downto 0);
		on_off : out std_logic
		--idle_sig : out std_logic;
		--data_sig : out std_logic;
		--status_sig : out std_logic
		);
end component;	
	

component play_note is
	port(
		clk      : in  std_logic;
		note   	 : in std_logic_vector(7 downto 0);
		on_off   : in std_logic;
		sample   : out std_logic
		);
end component;


  signal byte_sig   : std_logic_vector(7 downto 0) := (others => '0');
  signal note_sig   : std_logic_vector(7 downto 0) := (others => '0');
  signal valid_sig  : std_logic := '0';
  signal inputclk 	: std_logic; 
  signal outclk 	: std_logic; 
  signal sample_sig : std_logic; 
  signal on_off_sig : std_logic;   
  

begin

    CLKSIG : HSOSC port map('1', '1', inputclk);
    baud_sync: pll port map(outglobal_o=> outclk, ref_clk_i=> inputclk, rst_n_i=> '1');
  
	midi_in : midi_reciever
	port map(
			clk    => outclk,
	    	serial => serial,
	    	valid  => valid_sig,
	    	byte   => byte_sig
			--valid  => valid --
			--byte   => byte
			);

	midi_parse : midi_interpreter
	port map(
			clk    	=> outclk,
	    	valid   => valid_sig,
			--valid => valid,
			byte    => byte_sig,
			on_off  => on_off_sig,
			note    => note_sig
			--on_off => on_off,
			--note => note,
			--idle_sig => idle_sig,
			--data_sig => data_sig,
			--status_sig => status_sig
			);

	sound_out : play_note
	port map(
		clk     => inputclk,
		note    => note_sig,
		on_off  => on_off_sig,
		sample  => sample_sig
			);

	sample <= sample_sig; 

end synth;
