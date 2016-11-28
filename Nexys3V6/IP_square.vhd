----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:37 11/28/2016 
-- Design Name: 
-- Module Name:    IP_square - Behavioral 
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
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IP_square is
	GENERIC (Mycode : std_logic_vector(10 downto 0):="00000000011" );
		 Port ( 
					Tin : in  STD_LOGIC_VECTOR (31 downto 0);
				  Nin : in  STD_LOGIC_VECTOR (31 downto 0);
				  IPcode : in  STD_LOGIC_vector(10 downto 0) ;
				  Tout : out  STD_LOGIC_VECTOR (31 downto 0));
	end IP_square;
architecture Behavioral of IP_square is
	COMPONENT IP_mul16
	PORT(
		Tin : IN std_logic_vector(31 downto 0);
		Nin : IN std_logic_vector(31 downto 0);
		IPcode : IN std_logic_vector(10 downto 0);          
		Tout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
signal n1 : std_logic_vector (31 downto 0) ;
signal n2 : std_logic_vector (31 downto 0) ;
begin
Inst_IP_mul16_1: IP_mul16 PORT MAP(
		Tin =>  Tin , 
		Nin => Tin,
		IPcode => "00000000000",
		Tout => n1
		);
		
		Inst_IP_mul16_2: IP_mul16 PORT MAP(
		Tin => Nin,
		Nin => Nin,
		IPcode => "00000000000",
		Tout => n2
		);

Tout <= n1 + n2 when IPcode(10 downto 0)= Mycode else (others =>'Z');	

end Behavioral;

