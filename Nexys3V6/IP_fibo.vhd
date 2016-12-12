----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:24 11/29/2016 
-- Design Name: 
-- Module Name:    IP_fibo - Behavioral 
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
use ieee.std_logic_unsigned.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IP_fibo is
generic ( mycode : STD_LOGIC_VECTOR (10 downto 0):= "10000000011");
   port ( 
   clk : in  STD_LOGIC;
   reset : in  STD_LOGIC:='0';
   Tin : in  STD_LOGIC_VECTOR (31 downto 0);
   Tout : out  STD_LOGIC_VECTOR (31 downto 0);
   Ipcode : in  STD_LOGIC_VECTOR (10 downto 0); 
   IPdone : out STD_LOGIC);
end IP_fibo;
architecture dummyfibo of IP_fibo is
type state_type is (st_recup, st_genere, st_affiche); 
	signal state, next_state : state_type; 
	signal Tout_i : STD_LOGIC_VECTOR (31 downto 0);
	signal IPdone_i : STD_LOGIC;
	signal compt : STD_LOGIC_VECTOR(7 downto 0); 
	signal compt_i : STD_LOGIC_VECTOR(7 downto 0); 
	signal init_i : STD_LOGIC;
	signal fibobus : STD_LOGIC_VECTOR(31 downto 0);

	COMPONENT fibogen
	PORT(
		clk : IN std_logic;
		init : IN std_logic;          
		fiboout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

begin

	Inst_fibogen: fibogen PORT MAP(
			clk => clk,
			init => init_i,
			fiboout => fibobus
	);
 
	SYNC_PROC: process (clk, reset)
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				state <= st_recup;
				IPdone <= '0';
				compt <= x"00";
				Tout <= (others => 'Z');
			else
				state <= next_state;
				IPdone <= IPdone_i;
				if(IPdone_i = '1') then 
					Tout <= Tout_i;
				else 
					Tout <= (others => 'Z');
				end if;
				compt <= compt_i;
			end if;        
		end if;
	end process;
 
	OUTPUT_DECODE: process (state, fibobus)
	begin
		IPdone_i <= '0';
		Tout_i <= (others => '0');
		init_i <= '0';
		case (state) is 
			when st_recup =>
				init_i <= '1';
			when st_affiche =>
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
			when st_recup =>
				if IPcode = mycode then
					next_state <= st_genere;
					compt_i <= Tin(7 downto 0);
				end if;
			when st_genere =>
				if compt = x"03" then
					next_state <= st_affiche;
				else
					compt_i <= compt - 1;
				end if;
			when st_affiche =>
				next_state <= st_recup;
			when others =>
				next_state <= st_recup;
		end case;      
	end process;	
end dummyfibo;
