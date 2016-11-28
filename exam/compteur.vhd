----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:41 10/18/2016 
-- Design Name: 
-- Module Name:    compteur - Behavioral 
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

-- process compteur de 0 à 6 ou 9 et retour a 0 quand 9

entity compteur is
	 Port ( entier_max : in  STD_LOGIC_VECTOR (3 downto 0);
				clk : in std_logic;
           cpt : out  STD_LOGIC_VECTOR (3 downto 0));
end compteur;

architecture Behavioral of compteur is

begin


end Behavioral;

