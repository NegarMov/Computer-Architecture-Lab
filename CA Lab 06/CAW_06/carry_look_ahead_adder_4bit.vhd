----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:22 11/10/2021 
-- Design Name: 
-- Module Name:    carry_look_ahead_adder_4bit - Behavioral 
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

entity carry_look_ahead_adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end carry_look_ahead_adder_4bit;

architecture Behavioral of carry_look_ahead_adder_4bit is

component carry_generator_logic is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           C : out  STD_LOGIC_VECTOR (3 downto 0));
end component carry_generator_logic;

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component full_adder;

signal C_temp : STD_LOGIC_VECTOR (4 downto 1);

begin

	carry_generator_instance: carry_generator_logic port map (A => A, B => B, cin => cin, C => C_temp);
	
	full_adder_0: full_adder port map (a => A(0), b => B(0), cin => cin, sum => S(0));
	full_adder_1: full_adder port map (a => A(1), b => B(1), cin => C_temp(1), sum => S(1));
	full_adder_2: full_adder port map (a => A(2), b => B(2), cin => C_temp(2), sum => S(2));
	full_adder_3: full_adder port map (a => A(3), b => B(3), cin => C_temp(3), sum => S(3));
	cout <= C_temp(4);


end Behavioral;

