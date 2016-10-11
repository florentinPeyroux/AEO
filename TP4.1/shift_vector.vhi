
-- VHDL Instantiation Created from source file shift_vector.vhd -- 15:32:31 10/11/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT shift_vector
	PORT(
		clk_div_sign : IN std_logic;
		btn : IN std_logic_vector(4 downto 0);          
		led : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_shift_vector: shift_vector PORT MAP(
		clk_div_sign => ,
		btn => ,
		led => 
	);


