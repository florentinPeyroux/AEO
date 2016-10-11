library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
entity clkdiv is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           E190 : out  STD_LOGIC);
end clkdiv;

architecture clkdiv of clkdiv is
signal q: std_logic_vector(23 downto 0):= X"000000";
begin
    --clock divider
    process(clk,reset)
    begin   
        if reset ='1' then
            q <= X"000000";
        elsif clk'event and clk = '1' then
            q <= q+1;
        end if;
    end process;
    E190 <= q(18);
end clkdiv;