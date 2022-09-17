----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    14:39:47 10/13/2021  
-- Design Name:    NAND gate
-- Module Name:    nand_gate - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end nand_gate;

architecture Behavioral of nand_gate is

begin
	c <= not (a and b);

end Behavioral;

