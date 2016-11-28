----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:49 10/07/2016 
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
begin

	process (clk)

		variable counter : unsigned (23 downto 0):= (others => '0');
		variable clk_4hz_i : std_logic := '0';
		begin
			 if (clk'event and clk='1') then  
				counter := counter + 1;
				if (counter = X"BEBC20") then
					clk_4hz_i := not clk_4hz_i;
					counter := (others => '0');
				end if;
			end if;
			clk_4hz <= clk_4hz_i;
		end process ;

end Behavioral;

