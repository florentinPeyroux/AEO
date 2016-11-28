----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:46 11/22/2016 
-- Design Name: 
-- Module Name:    IP_Rdm - Behavioral 
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

        entity IP_Rdm is

            GENERIC (Mycode : std_logic_vector(10 downto 0) := "00000010000"

        ); 

            port (

         clk , reset : in std_logic; 

         IPcode : in std_logic_vector (10 downto 0);

         Tout : out std_logic_vector (31 downto 0);
			
			Nout : out std_logic_vector (31 downto 0)
        ); 

        end IP_Rdm;

architecture Behavioral of IP_Rdm is
	COMPONENT random
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		enable : IN std_logic;          
		random_num : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal qbus : std_logic_vector(31 downto 0) ;
	signal num1 : std_logic_vector(31 downto 0) ;
	signal num2 : std_logic_vector(31 downto 0) ;
	signal num3 : std_logic_vector(31 downto 0) ;

	signal rstbus : std_logic;

begin

random1 : random port map(clk => clk, reset => rstbus, enable => '1',  random_num => qbus);

rstbus <= '1' when IPcode(10 downto 0)= Mycode  else '0';
 
Tout <= x"00000" & qbus(11 downto 0) when IPcode(10 downto 0)= Mycode else (others =>'Z');
Nout <= x"00000" & qbus(23 downto 12) when IPcode(10 downto 0)= Mycode else (others =>'Z');

end Behavioral;

