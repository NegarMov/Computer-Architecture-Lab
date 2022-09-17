----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    09:40:00 10/13/2021 
-- Design Name:    1 bit COMPARATOR
-- Module Name:    comparator_1bit - Behavioral 
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_1bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           g : out  STD_LOGIC;
           e : out  STD_LOGIC;
           s : out  STD_LOGIC);
end comparator_1bit;

architecture Behavioral of comparator_1bit is

component xor_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component xor_gate;

signal not_e : STD_LOGIC;

begin
	xor_gate_0: xor_gate port map (a => a, b => b, c => not_e);
	g <= a and (not b);
	s <= (not a) and b;
	e <= not not_e;

end Behavioral;

