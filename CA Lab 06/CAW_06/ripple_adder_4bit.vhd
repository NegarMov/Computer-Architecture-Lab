----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:01 11/03/2021 
-- Design Name: 
-- Module Name:    ripple_adder_4bit - Behavioral 
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

entity ripple_adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end ripple_adder_4bit;

architecture Behavioral of ripple_adder_4bit is

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component full_adder;

signal C: STD_LOGIC_VECTOR (3 downto 0);

begin

	full_adder_0: full_adder port map (a => A(0), b => B(0), cin => cin, sum => S(0), cout => C(0));
	full_adder_1: full_adder port map (a => A(1), b => B(1), cin => C(0), sum => S(1), cout => C(1));
	full_adder_2: full_adder port map (a => A(2), b => B(2), cin => C(1), sum => S(2), cout => C(2));
	full_adder_3: full_adder port map (a => A(3), b => B(3), cin => C(2), sum => S(3), cout => C(3));
	
	cout <= C(3);

end Behavioral;

