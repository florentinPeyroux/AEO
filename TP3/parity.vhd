----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:47 09/27/2016 
-- Design Name: 
-- Module Name:    parity - Behavioral 
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

entity parity is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
           pair : out  STD_LOGIC_VECTOR(3 downto 0));
end parity;

architecture Behavioral of parity is


begin
	process (switches)
	variable cnt : std_logic :='0'; 
	begin
		for i in 3 downto 0 loop
			 cnt := cnt XOR ( switches(i) XOR switches(i+4));
		end loop;
			pair <= "000" & cnt;
	end process;
end Behavioral;

