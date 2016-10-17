----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:34 10/11/2016 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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

entity fsm is
	Port (
		clk : in std_logic;
		reset : in std_logic;
		anodes : out std_logic_vector (3 downto 0);
		SW : out std_logic_vector(3 downto 0);
		data : in std_logic_vector (15 downto 0)
		
	);
end fsm;

architecture Behavioral of fsm is
type state_type is (Digit1,Digit2,Digit3,Digit4);  
signal state, next_state : state_type ;  

begin
  process1: process (clk,reset)  
  begin  
    if (reset ='1') then  
      state <= Digit1;  
    elsif (clk='1' and clk'Event) then  
      state <= next_state;  
    end if;  
  end process process1;  
  
 process2 : process (state)  
  begin  
      case state is  
		  when Digit1 => next_state <= Digit2 ;
        when Digit2 => next_state <= Digit3 ;
		  when Digit3 => next_state <= Digit4 ;
		  when Digit4 => next_state <= Digit1 ;	  
      end case;      
  end process process2;
  
  process3 : process (state)  
  begin         
     case state is  
        when Digit1 => anodes <= "1110" ;  SW <= data(3 downto 0); 
        when Digit2 => anodes <= "1101" ;  SW <= data(7 downto 4);
		  when Digit3 => anodes <= "1011" ;  SW <= data(11 downto 8);
		  when Digit4 => anodes <= "0111" ;  SW <= data(15 downto 12);	
      end case;  
   
  end process process3;

end Behavioral;

