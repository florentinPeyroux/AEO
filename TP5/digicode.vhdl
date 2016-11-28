----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:42 11/07/2016 
-- Design Name: 
-- Module Name:    digicode - Behavioral 
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

entity digicode is
    Port ( btn : in  STD_LOGIC_VECTOR (4 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           switch : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end digicode;

architecture Behavioral of digicode is

component btn_pulse
	    Port ( inp : in  STD_LOGIC;
           outp : out  STD_LOGIC;
           e : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;

component fsm
		Port ( btn : in  STD_LOGIC_VECTOR(3 downto 0);
           reset : in  STD_LOGIC;
			  clk : in STD_LOGIC;
			  switch : in STD_LOGIC_VECTOR(7 downto 0);
			  chenillard : in std_logic_vector(7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component clkdiv
Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           E190, clk190 : out  STD_LOGIC);
end component;


component shift 
    Port ( clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal btn0 : STD_LOGIC;
signal btn1 : STD_LOGIC;
signal btn2 : STD_LOGIC;
signal btn3 : STD_LOGIC;
signal btn4 : STD_LOGIC;
signal chenillard : std_logic_vector(7 downto 0);
signal E : STD_LOGIC;

begin

clkE: clkdiv port map(
		clk => clk,
		reset => btn4,
		E190 => E,
		clk190 => open
	);
	
btn_pulse0: btn_pulse port map(
		inp => btn(0),
		outp => btn0,
		e => E,
		clk => clk
	);
	
btn_pulse1: btn_pulse port map(
		inp => btn(1),
		outp => btn1,
		e => E,
		clk => clk
	);

btn_pulse2: btn_pulse port map(
		inp => btn(2),
		outp => btn2,
		e => E,
		clk => clk
	);
	
btn_pulse3: btn_pulse port map(
		inp => btn(3),
		outp => btn3,
		e => E,
		clk => clk
	);
	
btn_pulse4: btn_pulse port map(
		inp => btn(4),
		outp => btn4,
		e => E,
		clk => clk
	);
	
fsm1: fsm port map(
	btn => btn3 & btn2 & btn1 & btn0,
	reset => btn4,
	clk => clk,
	switch => switch,
	chenillard => chenillard,
	led => led
);

shift1: shift port map(
	clk => clk,
   led => chenillard
);

end Behavioral;

