----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    15:41:45 10/13/2021  
-- Design Name:    NAND gate with 4 inputs
-- Module Name:    nand_4_input - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_4_input is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC);
end nand_4_input;

architecture Behavioral of nand_4_input is

component nand_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component nand_gate;

signal tmp : STD_LOGIC_VECTOR (1 downto 0);

begin
	nand_gate_0: nand_gate port map (a => a(0), b => a(1), c => tmp(0));
	nand_gate_1: nand_gate port map (a => a(2), b => a(3), c => tmp(1));
	res <= tmp(0) or tmp(1);

end Behavioral;

