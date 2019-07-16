-- CLKS_PER_BIT = (Frequency of Clk)/(Frequency of UART)

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity midi_reciever is
  generic (CLKS_PER_BIT : integer := 996);     ----- clk rate / baud UART = 31.125MHz/ 31250 ------- 
  port (
    clk    : in  std_logic;
    serial : in  std_logic;
    valid  : out std_logic;
    byte   : out std_logic_vector(7 downto 0)
    );
end midi_reciever;

architecture rtl of midi_reciever is


  type current is (idle, start_bit, data_bits, stop_bit);
  signal tracker : current := idle;

  signal data_r : std_logic := '1';
  signal data   : std_logic := '1';
  signal valid_sig     : std_logic := '0';
  signal clock_counter : integer range 0 to CLKS_PER_BIT-1 := 0;
  signal bit_index     : integer range 0 to 7 := 0;  -- 8 Bits Total
  signal byte_sig      : std_logic_vector(7 downto 0) := (others => '0');

begin

  -- double-register incoming data(removes problems caused by metastabiliy)
  double_reg : process (clk)
  begin
    if rising_edge(clk) then
      data <= serial;
      data_r <= data;
    end if;
  end process double_reg;
  

  -- control state machine
  
  state_machine : process (clk)
  begin
    if rising_edge(clk) then
        
      case tracker is

        when idle =>
          valid_sig     <= '0';
          clock_counter <= 0;
          bit_index     <= 0;

       --   if data = '0' then       -- start bit detected
		  if data_r = '0' then
            tracker <= start_bit;
          else
            tracker <= idle;
          end if;

          
        -- check middle of start bit to make sure it's still low
        when start_bit =>
			valid_sig     <= '0';
		    if clock_counter = (CLKS_PER_BIT)/2 then
				clock_counter <= clock_counter + 1;
				if data_r = '1' then
					tracker       <= idle;
				else
					tracker       <= start_bit;
				end if;
			elsif clock_counter = CLKS_PER_BIT-1 then
				clock_counter <= 0;          
				tracker       <= data_bits;
			else 
				clock_counter <= clock_counter + 1;
				tracker       <= start_bit;
			end if;
 
        -- Wait CLKS_PER_BIT-1 clock cycles to sample serial data
        when data_bits =>
			if clock_counter = (CLKS_PER_BIT)/2 then
					clock_counter <= clock_counter + 1;
					tracker   	<= data_bits;
					byte_sig(bit_index) <= data;
			elsif clock_counter = CLKS_PER_BIT-1 then
				clock_counter <= 0;          
				if bit_index < 7 then
				  bit_index <= bit_index + 1;
				  tracker   <= data_bits;
				else
				  bit_index <= 0;
				  tracker   <= stop_bit;
				end if;
			else 
				clock_counter <= clock_counter + 1;
				tracker   <= data_bits;
			end if;


        -- receive stop bit (stop bit = 1)
        when stop_bit =>
         	if clock_counter = CLKS_PER_BIT-1 then
				valid_sig     <= '1';
				tracker   <= idle;
			else				clock_counter <= clock_counter + 1;
				tracker   <= stop_bit;
			end if;

        when others =>
          tracker <= idle;

      end case;
    end if;
  end process state_machine;

--idle_sig <= '1' when tracker = idle else '0';
--data_sig <= '1' when tracker = data_bits else '0';
--stop_sig <= '1' when tracker = stop_bit else '0';
--start_sig <= '1' when tracker = start_bit else '0';

  valid <= valid_sig;
  byte 	<= byte_sig;
  
end rtl;