	----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:50 09/20/2016 
-- Design Name: 
-- Module Name:    x7seg - Behavioral 
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

entity x7seg is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
				mode : in STD_LOGIC_VECTOR ( 1 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end x7seg;

architecture Behavioral of x7seg is

begin
	process (sw,mode)
	begin
	
		CASE mode is
			WHEN "00" =>
				CASE sw IS
					WHEN  x"0" => sevenseg <= "1000000";
					WHEN  x"1" => sevenseg <= "1111001";
					WHEN  x"2" => sevenseg <= "0100100";
					WHEN  x"3" => sevenseg <= "0110000";
					WHEN  x"4" => sevenseg <= "0011001";
					WHEN  x"5" => sevenseg <= "0010010";
					WHEN  x"6" => sevenseg <= "0000010";
					WHEN  x"7" => sevenseg <= "1111000";
					WHEN  x"8" => sevenseg <= "0000000";
					WHEN  x"9" => sevenseg <= "0010000";
					WHEN  x"A" => sevenseg <= "0001000";
					WHEN  x"B" => sevenseg <= "0000011";
					WHEN  x"C" => sevenseg <= "1000110";
					WHEN  x"D" => sevenseg <= "0100001";
					WHEN  x"E" => sevenseg <= "0000110";
					WHEN OTHERS => sevenseg <= "0001110";
				END CASE;
			WHEN "01" =>
				CASE sw IS
					WHEN  x"0" => sevenseg <= "0001110";
					WHEN OTHERS => sevenseg <= "0000111";
				END CASE;
			WHEN "10" =>
				CASE sw IS
					WHEN  x"0" => sevenseg <= "1000000";
					WHEN  x"1" => sevenseg <= "1111001";
					WHEN  x"2" => sevenseg <= "0100100";
					WHEN  x"3" => sevenseg <= "0110000";
					WHEN  x"4" => sevenseg <= "0011001";
					WHEN  x"5" => sevenseg <= "0010010";
					WHEN  x"6" => sevenseg <= "0000010";
					WHEN  x"7" => sevenseg <= "1111000";
					WHEN OTHERS => sevenseg <= "0000000";
				END CASE;
			WHEN "11" =>
				CASE sw IS
					WHEN  x"0" => sevenseg <= "0001100";
					WHEN OTHERS => sevenseg <= "1001111";
				END CASE;
			WHEN OTHERS => sevenseg <= "1111111";
			END CASE;
	end process;
	
				

end Behavioral;

