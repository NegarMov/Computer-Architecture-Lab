----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    18:15:45 10/08/2021
-- Design Name:    Full Adder
-- Module Name:    full_adder - Behavioral 
-- Project Name:   Computer Architecture Workshop 01
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

component half_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component half_adder;

component or_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component or_gate;

signal sum0, cout0, cout1: std_logic;

begin
	half_adder_instance0: half_adder port map (a => a, b => b, sum => sum0, cout => cout0);
	half_adder_instance1: half_adder port map (a => sum0, b => cin, sum => sum, cout => cout1);
	or_gate_instance: or_gate port map (a => cout0, b => cout1, c => cout);
end Behavioral;

