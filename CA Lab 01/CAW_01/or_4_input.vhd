----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    17:59:08 10/08/2021
-- Design Name:    OR Gate with 4 Inputs
-- Module Name:    or_4_input - Behavioral 
-- Project Name:   Computer Architecture Workshop 01
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_4_input is
    Port ( a   : in  STD_LOGIC;
           b   : in  STD_LOGIC;
           c   : in  STD_LOGIC;
           d   : in  STD_LOGIC;
           res : out STD_LOGIC);
end or_4_input;

architecture Behavioral of or_4_input is

component or_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component or_gate;

signal w1, w2: std_logic;

begin
	or_gate_instance0: or_gate port map (a => a, b => b, c => w1);
	or_gate_instance1: or_gate port map (a => c, b => d, c => w2);
	or_gate_instance3: or_gate port map (a => w1, b => w2, c => res);
end Behavioral;

