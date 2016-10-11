----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:05 10/10/2016 
-- Design Name: 
-- Module Name:    chenillard - Behavioral 
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

entity chenillard is
    Port ( 	clk : in  STD_LOGIC;
				btn : in STD_LOGIC_VECTOR (4 downto 0);
				led : out  STD_LOGIC_VECTOR (7 downto 0));
end chenillard;

	
architecture Behavioral of chenillard is

COMPONENT clk_div
	PORT(
		clk : IN std_logic;          
		clk_4hz : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT shift_vector
	PORT(
		clk_div_sign : IN std_logic;
		btn : IN std_logic_vector(4 downto 0);          
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	
signal clk_div_sign : STD_LOGIC;

begin

clk_div1 :clk_div  port map (clk => clk, clk_4hz => clk_div_sign);
shift_vector1 : shift_vector port map (btn => btn, clk_div_sign => clk_div_sign, led => led);

end Behavioral;

