
-- VHDL Instantiation Created from source file IP_square.vhd -- 18:22:02 11/28/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IP_square
	PORT(
		Tin : IN std_logic_vector(31 downto 0);
		Nin : IN std_logic_vector(31 downto 0);
		IPcode : IN std_logic_vector(10 downto 0);          
		Tout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_IP_square: IP_square PORT MAP(
		Tin => ,
		Nin => ,
		IPcode => ,
		Tout => 
	);


