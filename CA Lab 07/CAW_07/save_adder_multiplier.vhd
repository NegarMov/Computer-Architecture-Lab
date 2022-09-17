----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:51 11/18/2021 
-- Design Name: 
-- Module Name:    save_adder_multiplier - Behavioral 
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

entity save_adder_multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           P : out  STD_LOGIC_VECTOR (8 downto 0));
end save_adder_multiplier;

architecture Behavioral of save_adder_multiplier is

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
signal c_3 : STD_LOGIC_VECTOR (4 downto 0);

-- sum signals
signal s_0 : STD_LOGIC_VECTOR (2 downto 0);
signal s_1 : STD_LOGIC_VECTOR (2 downto 0);
signal s_2 : STD_LOGIC_VECTOR (2 downto 0);
signal s_3 : STD_LOGIC_VECTOR (2 downto 0);

begin

	dp_0 <= (A(0) & A(0) & A(0) & A(0) & A(0)) and B;
	dp_1 <= (A(1) & A(1) & A(1) & A(1) & A(1)) and B;
	dp_2 <= (A(2) & A(2) & A(2) & A(2) & A(2)) and B;
	dp_3 <= (A(3) & A(3) & A(3) & A(3) & A(3)) and B;

	P(0) <= dp_0(0);

	ha_00 : half_adder port map (a => dp_0(1), b => dp_1(0), sum => P(1), cout => c_0(0));
	ha_01 : half_adder port map (a => dp_0(2), b => dp_1(1), sum => s_0(0), cout => c_0(1));
	ha_02 : half_adder port map (a => dp_0(3), b => dp_1(2), sum => s_0(1), cout => c_0(2));
	ha_03 : half_adder port map (a => dp_0(4), b => dp_1(3), sum => s_0(2), cout => c_0(3));
	
	fa_10 : full_adder port map (a => dp_2(0), b => c_0(0), cin => s_0(0), sum => P(2), cout => c_1(0));
	fa_11 : full_adder port map (a => dp_2(1), b => c_0(1), cin => s_0(1), sum => s_1(0), cout => c_1(1));
	fa_12 : full_adder port map (a => dp_2(2), b => c_0(2), cin => s_0(2), sum => s_1(1), cout => c_1(2));
	fa_13 : full_adder port map (a => dp_2(3), b => c_0(3), cin => dp_1(4), sum => s_1(2), cout => c_1(3));
	
	fa_20 : full_adder port map (a => dp_3(0), b => c_1(0), cin => s_1(0), sum => P(3), cout => c_2(0));
	fa_21 : full_adder port map (a => dp_3(1), b => c_1(1), cin => s_1(1), sum => s_2(0), cout => c_2(1));
	fa_22 : full_adder port map (a => dp_3(2), b => c_1(2), cin => s_1(2), sum => s_2(1), cout => c_2(2));
	fa_23 : full_adder port map (a => dp_3(3), b => c_1(3), cin => dp_2(4), sum => s_2(2), cout => c_2(3));
	
	ha_30 : half_adder port map (a => c_2(0), b => s_2(0), sum => P(4), cout => c_3(0));
	fa_31 : full_adder port map (a => c_2(1), b => s_2(1), cin => c_3(0), sum => P(5), cout => c_3(1));
	fa_32 : full_adder port map (a => c_2(2), b => s_2(2), cin => c_3(1), sum => P(6), cout => c_3(2));
	fa_33 : full_adder port map (a => c_2(3), b => dp_3(4), cin => c_3(2), sum => P(7), cout => P(8));

end Behavioral;

