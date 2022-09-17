----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    14:00:24 10/13/2021 
-- Design Name:    XOR gate
-- Module Name:    xor_gate - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end xor_gate;

architecture Behavioral of xor_gate is

signal tmp_0 : STD_LOGIC;
signal tmp_1 : STD_LOGIC;
signal tmp_2 : STD_LOGIC;

component nand_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component nand_gate;

begin
	nand_gate_0: nand_gate port map (a => a, b => b, c => tmp_0);
	nand_gate_1: nand_gate port map (a => a, b => tmp_0, c => tmp_1);
	nand_gate_2: nand_gate port map (a => tmp_0, b => b, c => tmp_2);
	nand_gate_3: nand_gate port map (a => tmp_1, b => tmp_2, c => c);

end Behavioral;

