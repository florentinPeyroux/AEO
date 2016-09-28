----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:48 09/20/2016 
-- Design Name: 
-- Module Name:    calc - Behavioral 
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

entity calc is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0));
end calc;

architecture Behavioral of calc is

component x7seg is
    port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component add4 is
    port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sum : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

signal s : STD_LOGIC_VECTOR (3 downto 0);

alias a_calc is switches(3 downto 0);
alias b_calc is switches(7 downto 4);

begin
	add4_1 : add4 port map (a => a_calc, b => b_calc, sum(3 downto 0) => s, sum(4) => led(7));
	x7seg_1 : x7seg port map (sw => s, sevenseg => sevenseg );

	anodes <= "0000";
	led(6 downto 0) <= "0000000";
end Behavioral;

