----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:54 11/15/2016 
-- Design Name: 
-- Module Name:    random - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity random is
	 generic ( width : integer :=  32 ); 
	 port (
		  clk , reset : in std_logic;
		  enable : in std_logic;
		  random_num : out std_logic_vector (width-1 downto 0)   --output vector            
		  );
end random;

architecture Behavioral of random is
  signal r : std_logic_vector(31 downto 0) :=  x"80000000";

begin
process1: process (clk,reset)  
  begin        
         if (reset = '1') then
            r<=x"80000000";         
			end if;
			if (clk'Event and clk = '1' and enable = '1') then
			
					r <=  (((r(0) xor r(2)) xor r(3)) xor r(4)) & r(31 downto 1);
				
			end if;
			random_num <= r;
       
  end process process1; 
end Behavioral;

