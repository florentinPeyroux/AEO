----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:08:02 11/29/2016 
-- Design Name: 
-- Module Name:    fibogen - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fibogen is
    Port ( clk      : in  STD_LOGIC;
           init     : in  STD_LOGIC;
           fiboout  : out STD_LOGIC_VECTOR (31 downto 0));
 
 attribute clock_signal : string;
 attribute clock_signal of clk : signal is "yes";
end fibogen;

architecture Behavioral of fibogen is
signal fib : std_logic_vector(31 downto 0):= x"00000001";
signal fib2 : std_logic_vector(31 downto 0):= x"00000001";
begin
process1: process (clk)  
  begin  
      if (clk'Event and clk = '1') then
         if (init = '0') then
			fib <= fib2;
			fib2 <= fib + fib2;
            
         else
				if (init = '1') then
            fib  <= x"00000001";
				fib2 <= x"00000001";
				end if;
			end if;
			fiboout <= fib2;
      end if;
  end process process1; 
 

end Behavioral;

