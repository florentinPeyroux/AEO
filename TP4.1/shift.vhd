----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:11 10/04/2016 
-- Design Name: 
-- Module Name:    shift - Behavioral 
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


entity shift is
    Port ( clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end shift;

architecture Behavioral of shift is

component fpd is
GENERIC (init_value: STD_Logic  := '0');
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC:= init_value;
           clk : in  STD_LOGIC);
end component;
signal q0 : STD_LOGIC;
signal q1 : STD_LOGIC;
signal q2 : STD_LOGIC;
signal q3 : STD_LOGIC;
signal q4 : STD_LOGIC;
signal q5 : STD_LOGIC;
signal q6 : STD_LOGIC;
signal q7 : STD_LOGIC;

begin
fpd1 : fpd  GENERIC MAP(init_value => '0') port map ( d => q7, q => q0,clk =>clk);
fpd2 : fpd  GENERIC MAP(init_value => '0') port map ( d => q0, q => q1,clk =>clk);
fpd3 : fpd  GENERIC MAP(init_value => '0') port map ( d => q1, q => q2,clk =>clk);
fpd4 : fpd  GENERIC MAP(init_value => '0') port map ( d => q2, q => q3,clk =>clk);
fpd5 : fpd  GENERIC MAP(init_value => '0') port map ( d => q3, q => q4,clk =>clk);
fpd6 : fpd  GENERIC MAP(init_value => '0') port map ( d => q4, q => q5,clk =>clk);
fpd7 : fpd  GENERIC MAP(init_value => '0') port map ( d => q5, q => q6,clk =>clk);
fpd8 : fpd  GENERIC MAP(init_value => '1') port map ( d => q6, q => q7,clk =>clk);

led<= Q7&Q6&Q5&Q4&Q3&Q2&Q1&Q0 ;

end Behavioral;

