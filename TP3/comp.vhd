----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:56 09/27/2016 
-- Design Name: 
-- Module Name:    comp - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
           comp : out  STD_LOGIC_VECTOR(3 downto 0));
end comp;

architecture Behavioral of comp is
	alias a is switches(3 downto 0);
	alias b is switches(7 downto 4);

	begin

		comp <= "0001" when a(0)=b(4) AND a(1)=b(5) AND a(2)=b(6) AND a(3)=b(7) else "0000";
		

end Behavioral;

