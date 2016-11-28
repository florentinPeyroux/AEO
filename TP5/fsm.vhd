----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:41 11/07/2016 
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
use IEEE.STD_LOGIC_unsigned.ALL;
USE ieee.numeric_std.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm is
	port (
			btn : in std_logic_vector(3 downto 0);
			switch : in std_logic_vector(7 downto 0);
			reset : in std_logic;		
			clk : in std_logic;
			chenillard : in std_logic_vector(7 downto 0);
			led : out std_logic_vector(7 downto 0));
end fsm;

architecture Behavioral of fsm is
  type state_type is (init,s1,s2,s3,s4);  
  signal state, next_state: state_type ;  
  signal correct : std_logic_vector(7 downto 0) := "00000000";
begin
  process1: process (clk)  
  variable cpt : std_logic_vector(27 downto 0) := (others => '0');
  begin  
      if (clk'Event and clk = '1') then
         if (reset = '1') then
            state <= init;
         else
				state <= next_state;
			end if;
			if state= s4 then
				if cpt = X"BEBC200" then
					cpt := (others => '0');
					state <= init;
				else
					cpt := cpt + 1;
				end if;
			end if;
			led <= correct;
      end if;	 
  end process process1; 
 
  process2 : process (state, btn, reset,switch)  
  begin  
	next_state <= state;
	if btn = "0000" then
		next_state <= state;
	elsif reset='1' then
		next_state <= init;
	else
		case state is  
				 when init => if btn(TO_INTEGER(unsigned(switch(7 downto 6)))) = '1' then  
									next_state <= s1;  
								end if;  
				 when s1 =>  if btn(TO_INTEGER(unsigned(switch(5 downto 4)))) = '1' then   
									next_state <= s2;  
								else					
									next_state <= init;
								end if; 
				when s2 =>  if btn(TO_INTEGER(unsigned(switch(3 downto 2)))) = '1' then  
									next_state <= s3;  
								else					
									next_state <= init;
								end if; 
				when s3 =>  if btn(TO_INTEGER(unsigned(switch(1 downto 0)))) = '1' then  
									next_state <= s4;  
								else					
									next_state <= init;
								end if;  
				when s4 => next_state <= init;  

    end case; 
	end if;
end process process2; 
 
process3 : process (state)  
  begin  
      case state is  
		    when init => correct <=  "00000000" ;
          when s1 => correct <=  "00000010" ;
          when s2 => correct <=  "00000010" ;
          when s3 => correct <=  "00000010" ;
          when s4 => correct <=  chenillard ;
      end case;  
end process process3; 
end Behavioral;

