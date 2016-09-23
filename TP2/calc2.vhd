----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:59 09/23/2016 
-- Design Name: 
-- Module Name:    calc2 - Behavioral 
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

entity calc2 is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           btn : in  STD_LOGIC_VECTOR (1 downto 0));
end calc2;

architecture Behavioral of calc2 is

component x7seg is
    port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component add4 is
    port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sum : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

signal add1 : STD_LOGIC_VECTOR (3 downto 0);
signal and1 : STD_LOGIC_VECTOR (3 downto 0);
signal or1 : STD_LOGIC_VECTOR (3 downto 0);
signal xor1 : STD_LOGIC_VECTOR (3 downto 0);
signal res : STD_LOGIC_VECTOR (3 downto 0);

alias a_calc is switches(3 downto 0);
alias b_calc is switches(7 downto 4);

begin
	

	add4_1 : add4 port map (a => a_calc, b => b_calc, sum(3 downto 0) => add1, sum(4) => led(7));
	and1 <= a_calc and b_calc;
	or1 <= a_calc or b_calc;
	xor1 <= a_calc xor b_calc;
	
	
	res <= add1 when btn="00" else
	and1 when btn="01" else
	or1 when btn="10" else xor1;
	
	x7seg_1 : x7seg port map (sw => res, sevenseg => sevenseg );
	anodes <= "0000";
	led(6 downto 0) <= "0000000";



end Behavioral;

