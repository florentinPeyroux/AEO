

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
begin
    IPdone <= '1' when mycode = Ipcode else '0';
    Tout <= x"12345678" when mycode = Ipcode else ( others=>'Z');
end dummyfibo;