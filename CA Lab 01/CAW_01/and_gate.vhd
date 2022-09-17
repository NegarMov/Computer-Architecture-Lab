----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    16:37:36 10/08/2021 
-- Design Name:    AND Gate with 2 Inputs
-- Module Name:    and_gate - Behavioral 
-- Project Name:   Computer Architecture Workshop 01
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out STD_LOGIC);
end and_gate;

architecture Behavioral of and_gate is

begin
	c <= a and b;
	
end Behavioral;
