----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:39 11/17/2021 
-- Design Name: 
-- Module Name:    simple_multiplier - Behavioral 
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

entity simple_multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           P : out  STD_LOGIC_VECTOR (8 downto 0));
end simple_multiplier;

architecture Behavioral of simple_multiplier is

component half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component half_adder;

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component full_adder;

-- digits product
signal dp_0 : STD_LOGIC_VECTOR (4 downto 0);
signal dp_1 : STD_LOGIC_VECTOR (4 downto 0);
signal dp_2 : STD_LOGIC_VECTOR (4 downto 0);
signal dp_3 : STD_LOGIC_VECTOR (4 downto 0);

-- carry out signals
signal c_0 : STD_LOGIC_VECTOR (4 downto 0);
signal c_1 : STD_LOGIC_VECTOR (4 downto 0);
signal c_2 : STD_LOGIC_VECTOR (4 downto 0);

-- partial products
signal pp_0 : STD_LOGIC_VECTOR (4 downto 0);
signal pp_1 : STD_LOGIC_VECTOR (4 downto 0);
signal pp_2 : STD_LOGIC_VECTOR (4 downto 0);

begin

	dp_0 <= (A(0) & A(0) & A(0) & A(0) & A(0)) and B;
	dp_1 <= (A(1) & A(1) & A(1) & A(1) & A(1)) and B;
	dp_2 <= (A(2) & A(2) & A(2) & A(2) & A(2)) and B;
	dp_3 <= (A(3) & A(3) & A(3) & A(3) & A(3)) and B;
	
	ha_00 : half_adder port map (a => dp_0(1), b => dp_1(0), sum => pp_0(0), cout => c_0(0));
	fa_01 : full_adder port map (a => dp_0(2), b => dp_1(1), cin => c_0(0), sum => pp_0(1), cout => c_0(1));
	fa_02 : full_adder port map (a => dp_0(3), b => dp_1(2), cin => c_0(1), sum => pp_0(2), cout => c_0(2));
	fa_03 : full_adder port map (a => dp_0(4), b => dp_1(3), cin => c_0(2), sum => pp_0(3), cout => c_0(3));
	ha_04 : half_adder port map (a => c_0(3), b => dp_1(4), sum => pp_0(4), cout => c_0(4));
	
	ha_10 : half_adder port map (a => dp_2(0), b => pp_0(1), sum => pp_1(0), cout => c_1(0));
	fa_11 : full_adder port map (a => dp_2(1), b => pp_0(2), cin => c_1(0), sum => pp_1(1), cout => c_1(1));
	fa_12 : full_adder port map (a => dp_2(2), b => pp_0(3), cin => c_1(1), sum => pp_1(2), cout => c_1(2));
	fa_13 : full_adder port map (a => dp_2(3), b => pp_0(4), cin => c_1(2), sum => pp_1(3), cout => c_1(3));
	fa_14 : full_adder port map (a => dp_2(4), b => c_0(4), cin => c_1(3), sum => pp_1(4), cout => c_1(4));
	
	ha_20 : half_adder port map (a => dp_3(0), b => pp_1(1), sum => pp_2(0), cout => c_2(0));
	fa_21 : full_adder port map (a => dp_3(1), b => pp_1(2), cin => c_2(0), sum => pp_2(1), cout => c_2(1));
	fa_22 : full_adder port map (a => dp_3(2), b => pp_1(3), cin => c_2(1), sum => pp_2(2), cout => c_2(2));
	fa_23 : full_adder port map (a => dp_3(3), b => pp_1(4), cin => c_2(2), sum => pp_2(3), cout => c_2(3));
	fa_24 : full_adder port map (a => dp_3(4), b => c_1(4), cin => c_2(3), sum => pp_2(4), cout => c_2(4));
	
	
	P(0) <= dp_0(0);
	P(1) <= pp_0(0);
	P(2) <= pp_1(0);
	P(7 downto 3) <= pp_2;
	p(8) <= c_2(4);

end Behavioral;

