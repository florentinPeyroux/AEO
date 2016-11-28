----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:54 10/04/2016 
-- Design Name: 
-- Module Name:    shift_vector - Behavioral 
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

entity shift_vector is
    Port ( clk_div_sign : in  STD_LOGIC;
			  switch : in STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end shift_vector;

architecture Behavioral of shift_vector is
signal temp : STD_LOGIC_VECTOR (7 downto 0) := "10000000";

begin
process (clk_div_sign) 
variable sens : bit := '0';
variable cpt : integer := 7;
begin


	if (clk_div_sign'event and clk_div_sign='1') then
		if(switch(cpt) = '1') then
			sens := not sens;
		end if;
		if(sens = '0') then	
			if (temp = "00000001") then
				sens := not sens;
				else
				temp <= "0"& temp(7 downto 1);
				cpt := cpt -1;
			end if;
		else 
			if (temp = "10000000") then
				sens := not sens;
				else
				temp <= temp(6 downto 0) & "0";
				cpt := cpt +1;
			end if;
		end if;
	end if;
	led <= temp;
end process;



end Behavioral;

