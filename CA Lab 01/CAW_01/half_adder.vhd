----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    17:46:36 10/08/2021
-- Design Name:    Half Adder
-- Module Name:    half_adder - Behavioral 
-- Project Name:   Computer Architecture Workshop 01
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

component xor_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component xor_gate;

component and_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component and_gate;

begin
	xor_gate_instance: xor_gate port map (a => a, b => b, c => sum);
	and_gate_instance: and_gate port map (a => a, b => b, c => cout);
end Behavioral;

