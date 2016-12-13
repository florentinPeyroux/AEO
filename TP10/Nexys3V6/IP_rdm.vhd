----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:27 11/21/2016 
-- Design Name: 
-- Module Name:    IP_rdm - Behavioral 
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

Entity IP_rdm is
    GENERIC (Mycode : std_logic_vector(10 downto 0) := "00000010000"
); 
	port (
		 clk , reset : in std_logic; 
		 IPcode : in std_logic_vector (10 downto 0);
		 Tout : out std_logic_vector (31 downto 0);
		 Nout : out std_logic_vector (31 downto 0)
	); 
end IP_rdm;
architecture Behavioral of IP_rdm is

	COMPONENT random
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		enable : IN std_logic;          
		random_num : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal r : std_logic_vector(31 downto 0);
	signal e : std_logic;
	signal rst : std_logic;
	
begin

	Inst_random: random PORT MAP(
		clk => clk,
		reset => reset,
		enable => e,
		random_num => r
	);
	
e <= '1' when ipcode(10 downto 0)= Mycode else '0';
Tout <= x"00000" & r(11 downto 0) when IPcode(10 downto 0)= Mycode else (others =>'Z');
Nout <= x"00000" & r(23 downto 12) when IPcode(10 downto 0)= Mycode else (others =>'Z');

end Behavioral;

