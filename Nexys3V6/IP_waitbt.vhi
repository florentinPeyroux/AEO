
-- VHDL Instantiation Created from source file IP_waitbt.vhd -- 15:46:44 11/22/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IP_waitbt
	PORT(
		Tin : IN std_logic_vector(4 downto 0);
		IPcode : IN std_logic_vector(10 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;
		Btn : IN std_logic_vector(4 downto 0);          
		Tout : OUT std_logic_vector(31 downto 0);
		IPdone : OUT std_logic
		);
	END COMPONENT;

	Inst_IP_waitbt: IP_waitbt PORT MAP(
		Tin => ,
		IPcode => ,
		clk => ,
		reset => ,
		Btn => ,
		Tout => ,
		IPdone => 
	);


