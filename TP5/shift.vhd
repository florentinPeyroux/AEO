----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:21 10/07/2016 
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

component fpd
	GENERIC (init_value: STD_LOGIC := '0');
    port ( d : in  STD_LOGIC;
           q : out STD_LOGIC;
           clk : STD_LOGIC);
end component;

component clk_div
    Port ( clk : in  STD_LOGIC;
           clk_4hz : out  STD_LOGIC);
end component;

signal Q: STD_LOGIC_VECTOR (7 downto 0); 
signal CLK4HZ: STD_LOGIC;

begin

CLK_MOD: clk_div port map(
	clk => clk, 
	clk_4hz => CLK4HZ
	);

FPD0: fpd port map(
	d => Q(1), 
	q => Q(0), 
	clk => CLK4HZ
	);

FPD1: fpd port map(
	d => Q(2), 
	q => Q(1), 
	clk => CLK4HZ
	);
	
FPD2: fpd port map(
	d => Q(3), 
	q => Q(2), 
	clk => CLK4HZ
	);
	
FPD3: fpd port map(
	d => Q(4), 
	q => Q(3), 
	clk => CLK4HZ
	);	
	
FPD4: fpd port map(
	d => Q(5), 
	q => Q(4), 
	clk => CLK4HZ
	);	

FPD5: fpd port map(
	d => Q(6), 
	q => Q(5), 
	clk => CLK4HZ
	);

FPD6: fpd port map(
	d => Q(7), 
	q => Q(6), 
	clk => CLK4HZ
	);
	
FPD7: fpd
GENERIC MAP(init_value => '1')
port map(
 d => Q(0),
 q => Q(7),
 clk => CLK4HZ
	);	

led<= Q(7)& Q(6)& Q(5)& Q(4)& Q(3)& Q(2)& Q(1)& Q(0) ;

end Behavioral;
