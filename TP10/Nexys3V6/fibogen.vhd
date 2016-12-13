----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:51 11/29/2016 
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
use ieee.std_logic_unsigned.all; 

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

	signal fib : std_logic_vector(31 downto 0);
	signal fib2 : std_logic_vector(31 downto 0);

begin

	process(clk, init)
	variable fibInt : std_logic_vector(31 downto 0);
	begin
		if(clk'event and clk = '1') then
			if(init = '0') then
				fibInt := fib2;
				fib2 <= fib2 + fib;
				fib <= fibInt;
			else
				fib <= x"00000001";
				fib2 <= x"00000001";
			end if;
		end if;
	end process;

	fiboout <= fib2;

end Behavioral;

