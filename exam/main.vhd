----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:38:41 10/11/2016 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
    Port (  clk : in STD_LOGIC;
				switches : in  STD_LOGIC_VECTOR (7 downto 0);
				sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
            anodes : out  STD_LOGIC_VECTOR (3 downto 0));
end main;

architecture Behavioral of main is
component clkdiv is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           E190 : out  STD_LOGIC);
end component;

component fsm is
	Port (
		clk : in std_logic;
		reset : in std_logic;
		anodes : out std_logic_vector (3 downto 0);
		SW : out std_logic_vector(3 downto 0);
		data : in std_logic_vector (15 downto 0)
		
	);
end component;

component x7seg is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal data : std_logic_vector (15 downto 0);
signal E : std_logic;
signal result : std_logic_vector (3 downto 0);

begin
data <= switches(7 downto 0) & switches(3 downto 0) & switches(7 downto 4);
clkdiv1 : clkdiv port map(clk => clk, reset => '0', E190 => E);
fsm1 : fsm port map(clk => E, reset =>'0', data => data, SW => result, anodes => anodes);
x7seg1 : x7seg port map (sw => result, sevenseg => sevenseg);
end Behavioral;

