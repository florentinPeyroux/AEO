----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:25 10/18/2016 
-- Design Name: 
-- Module Name:    mainQ3 - Behavioral 
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

entity mainQ3 is
    Port (  clk : in STD_LOGIC;				
				sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
            anodes : out  STD_LOGIC_VECTOR (3 downto 0));
end mainQ3;

architecture Behavioral of mainQ3 is
component clkdiv is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           E100 : out  STD_LOGIC);
end component;

component fsm is
		Port (
		clk : in std_logic;		
		anodes : out std_logic_vector (3 downto 0);
		SW : out std_logic_vector(3 downto 0);
		data : in std_logic_vector (15 downto 0)
		
	);
end component;

component x7seg is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal E : std_logic;
signal result : std_logic_vector (3 downto 0);

begin
clkdiv100hz1 : clkdiv100hz port map(clk => clk, reset => '0', E100 => E);

fsm1 : fsmq3 port map(clk => E, data => data, SW => result, anodes => anodes);
x7seg1 : x7seg port map (sw => result, sevenseg => sevenseg);
end Behavioral;

