----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:56 12/05/2016 
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
Port ( clk : in  STD_LOGIC;
       init_i : in  STD_LOGIC;
		 reset : in STD_LOGIC;
       fibobus : in STD_LOGIC_VECTOR (31 downto 0));

end fsm;

architecture Behavioral of fsm is
 
   type state_type is (st1_wait, st2_fibo, st3_print); 
   signal state, next_state : state_type; 
   signal IPdone_i : std_logic;  
	signal Tout_i : std_logic; 
 
begin

SYNC_PROC: process (clk,reset)
   begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= st1_wait;
            IPdone_i <= '0';
					compt <= x"00";
					Tout <= (others => 'Z');
          else
            state <= next_state;
            IPdone <= IPdone_i;
				if IPdone_i = '1' then
					Tout <= Tout_i;
				else
					Tout <= (others => 'Z');
				end if
				compt<=compt_i;
         end if;        
      end if;
   end process;
 
OUTPUT_DECODE: process (state,fibobus)
   begin
		IPdone <= '0';
		Tout_i <= (others => '0');
		init_i <= '0';
		case state is
			when st1_wait =>
				init_i <= '1';
			when finish =>
				IPdone_i <= '1';
				Tout_i <= fibobus;
			when others =>
				end case;
   end process;
 
   NEXT_STATE_DECODE: process (state, IPcode, compt)
   begin
      next_state <= state;  
   	compt_i <= x"00";
      case (state) is
         when st1_wait =>
            if IPcode = mycode then
               next_state <= st2_fibo;
					compt_i <= Tin(7 downto 0);
            end if;
         when st2_fibo =>
            if compt =  x"03" then
               next_state <= st3_print;
				else
					compt_i <= compt-1;
            end if;
         when st3_print =>
            next_state <= st1_wait;
         when others =>
            next_state <= st1_wait;
      end case;      
   end process;

				

end Behavioral;

