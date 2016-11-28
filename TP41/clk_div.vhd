----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:44:47 10/04/2016 
-- Design Name: 
-- Module Name:    clk_div - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity clk_div is
    Port ( clk : in  STD_LOGIC;
           clk_4hz : out  STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
signal clk_4hz_sig: STD_LOGIC:= '1';

begin
process (clk)
	variable compteur : unsigned(23 downto 0):= (others => '0');
	begin 
		if (clk'event and clk='1') then
			if(compteur = X"BEBC20")then 
				compteur := (others => '0');
				clk_4hz_sig <= not clk_4hz_sig;
			else 
				compteur := X"1" + compteur;
			end if;
		end if;
		clk_4hz <= clk_4hz_sig;
	end process;
end Behavioral;

