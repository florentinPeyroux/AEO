----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:51 10/18/2016 
-- Design Name: 
-- Module Name:    compteur100hz - Behavioral 
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

entity compteur100hz is
    Port ( clk : in  STD_LOGIC;            
           resultat : out  STD_LOGIC_VECTOR (3 downto 0));
end compteur100hz;

architecture Behavioral of compteur100hz is

begin

  
  process (clk)
	variable counter : unsigned(23 downto 0):= (others => '0');	
	begin
		if (counter = 255) then
			counter := X"000000";		
			
		end if;

		if (clk'event and clk='1') then
			counter:= counter + 1;		
		end if;
			resultat <= conv_std_logic_vector(counter,4);
	end process;

end Behavioral;

