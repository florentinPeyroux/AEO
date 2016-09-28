----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:51 09/27/2016 
-- Design Name: 
-- Module Name:    count1 - Behavioral 
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
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count1 is
    Port (  switches : in  STD_LOGIC_VECTOR (7 downto 0);
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end count1;

architecture Behavioral of count1 is

begin
	process (switches)
	variable cnt : integer(32) :=0;
	begin
		for i in 7 downto 0 loop
			if switches(i)='1' then cnt:= cnt+1;
			end if;
		end loop;
			count <= conv_std_logic_vector(cnt,4);
	end process;
end Behavioral;

