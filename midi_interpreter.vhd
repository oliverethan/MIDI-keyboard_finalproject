library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity midi_interpreter is
  port (
    clk    : in  std_logic;
    valid  : in std_logic;
    byte   : in std_logic_vector(7 downto 0);
	note   : out std_logic_vector(7 downto 0);
	on_off : out std_logic
	--idle_sig : out std_logic;
	--data_sig : out std_logic;
	--status_sig : out std_logic

    );
end midi_interpreter;


architecture rtl of midi_interpreter is


  type current is (idle, status, data);					 
  signal tracker : current := idle;

  signal status_byte  : std_logic_vector(7 downto 0) := (others => '0');
  signal data_byte    : std_logic_vector(7 downto 0) := (others => '0');
  signal on_off_sig	  : std_logic := '0';

  --signal discard_byte : std_logic_vector(7 downto 0) := (others => '0');
 -- signal byte_sig     : std_logic_vector(7 downto 0) := (others => '0');
 --signal valid_sig    : std_logic := '0';


	begin
	   
	 state_machine : process (clk)
	 begin
	    if rising_edge(clk) then     
			if valid = '1' then

			case tracker is			
			
				when idle => 
					if byte(7) = '1' then
						tracker <= status;
						status_byte <= byte;
					else 
				--		tracker <= idle;
						data_byte <= "00000000";
						status_byte <= "00000000";
						on_off_sig <= '0';
					end if;
					
				
				when status => 
					on_off_sig <= status_byte(4); -- 0x8 when off, 0x9 when on
					
					if byte(7) = '0' then
						tracker <= data;
						data_byte <= byte;
					else 
						tracker <= status; -- idle??
					end if;
					
				when data =>
					--byte_sig <= data_byte;
					tracker <= idle;
		
				when others =>
					tracker <= idle;
	 
			end case;
			end if;
		end if;
	end process state_machine;

	note <= data_byte;
	on_off <= on_off_sig;
	
	--idle_sig <= '1' when tracker = idle else '0';
	--data_sig <= '1' when tracker = data else '0';
	--status_sig <= '1' when tracker = status else '0';
  
end rtl;