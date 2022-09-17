----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:03 11/10/2021 
-- Design Name: 
-- Module Name:    carry_save_adder_4bit - Behavioral 
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

entity carry_save_adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (4 downto 0);
			  cout : out STD_LOGIC);
end carry_save_adder_4bit;

architecture Behavioral of carry_save_adder_4bit is

component ripple_adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component ripple_adder_4bit;

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component full_adder;

signal X : STD_LOGIC_VECTOR (3 downto 0);
signal Y : STD_LOGIC_VECTOR (3 downto 0);
signal S_temp : STD_LOGIC_VECTOR (3 downto 1);


begin

	full_adder_0: full_adder port map (a => A(0), b => B(0), cin => C(0), sum => S(0), cout => X(0));
	full_adder_1: full_adder port map (a => A(1), b => B(1), cin => C(1), sum => S_temp(1), cout => X(1));
	full_adder_2: full_adder port map (a => A(2), b => B(2), cin => C(2), sum => S_temp(2), cout => X(2));
	full_adder_3: full_adder port map (a => A(3), b => B(3), cin => C(3), sum => S_temp(3), cout => X(3));
	
	Y <= '0' & S_temp;
	ripple_adder_instance: ripple_adder_4bit port map (A => X, B => Y, cin => '0', S => S(4 downto 1), cout => cout);

end Behavioral;

