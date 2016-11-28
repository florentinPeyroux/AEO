----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:51 10/18/2016 
-- Design Name: 
-- Module Name:    mainQ2 - Behavioral 
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

entity mainQ2 is
  Port ( clk : in  STD_LOGIC;
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end mainQ2;

architecture Behavioral of mainQ2 is
component x7seg is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component clkdiv100hz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           E100 : out  STD_LOGIC);
end component;

component compteur100hz is
    Port ( clk : in  STD_LOGIC;            
           resultat : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal E100 : std_logic;
signal resultat : STD_LOGIC_VECTOR (3 downto 0);

begin
anodes <= "1110";
clkdiv100hz1 : clkdiv100hz port map ( clk => clk, reset => '0', E100 => E100);
compteur100hz1 :compteur100hz port map (clk => E100, resultat => resultat);
x7seg1 :x7seg port map ( sw => resultat, sevenseg => sevenseg );


end Behavioral;

