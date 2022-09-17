----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:44 11/03/2021 
-- Design Name: 
-- Module Name:    bcd_adder - Behavioral 
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

entity bcd_adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC);
end bcd_adder;

architecture Behavioral of bcd_adder is

component ripple_adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component ripple_adder_4bit;

signal Sp : STD_LOGIC_VECTOR (3 downto 0);
signal Cp : STD_LOGIC;
signal overflow: STD_LOGIC;
signal ripple_adder_input: STD_LOGIC_VECTOR (3 downto 0);

begin
	
	ripple_adder_4bit_0: ripple_adder_4bit port map (A => A, B => B, cin => '0', S => Sp, cout => Cp);
	
	overflow <= Cp or (Sp(1) and Sp(3)) or (Sp(2) and Sp(3));
	
	ripple_adder_input <= '0' & overflow & overflow & '0';
	ripple_adder_4bit_1: ripple_adder_4bit port map (A => Sp, B => ripple_adder_input, cin => '0', S => S);
	C <= overflow;

end Behavioral;

