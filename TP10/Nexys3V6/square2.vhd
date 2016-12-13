----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:24 11/28/2016 
-- Design Name: 
-- Module Name:    square2 - Behavioral 
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

entity IP_square2 is
 GENERIC (Mycode : std_logic_vector(10 downto 0) := "00000010001");
   Port ( 
			  Tin : in  STD_LOGIC_VECTOR (31 downto 0);
           Nin : in  STD_LOGIC_VECTOR (31 downto 0);
           IPcode : in  STD_LOGIC_vector(10 downto 0) ;
           Tout : out  STD_LOGIC_VECTOR (31 downto 0)
	);
end IP_square2;

architecture Behavioral of IP_square2 is

component IP_mul16
	GENERIC (Mycode : std_logic_vector (10 downto 0));
	Port ( 
				Tin : in  STD_LOGIC_VECTOR (31 downto 0);
           Nin : in  STD_LOGIC_VECTOR (31 downto 0);
           IPcode : in  STD_LOGIC_vector(10 downto 0);
           Tout : out  STD_LOGIC_VECTOR (31 downto 0)
	);
end component; 

	signal out1 : STD_LOGIC_VECTOR (31 downto 0);
	signal out2 : STD_LOGIC_VECTOR (31 downto 0);

begin

Inst_IP_multiply1: IP_mul16
	generic map (Mycode =>"00000000000")
	PORT MAP(
	Tin => Tin,
	Nin => Tin,
	IPcode => "00000000000",
	Tout => out1
);
	
Inst_IP_multiply2: IP_mul16
	generic map (Mycode =>"00000000000")
	PORT MAP(
	Tin => Nin,
	Nin => Nin,
	IPcode => "00000000000",
	Tout => out2
);

Tout <= out1 + out2 when IPcode = Mycode else (others =>'Z');

end Behavioral;

