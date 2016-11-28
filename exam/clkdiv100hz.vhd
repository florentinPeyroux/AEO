----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:09 10/18/2016 
-- Design Name: 
-- Module Name:    clkdiv100hz - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clkdiv100hz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           E100 : out  STD_LOGIC);
end clkdiv100hz;

architecture Behavioral of clkdiv100hz is
signal q: std_logic_vector(23 downto 0):= X"000000";

begin

    --clock divider
    process(clk,reset)
    begin   
        if reset ='1' then
            q <= X"000000";
        elsif clk'event and clk = '1' then
            q <= q+1;
        end if;
    end process;
    E100 <= q(19);    --100Hz freq
	 
end Behavioral;

