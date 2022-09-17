----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    16:41:29 10/08/2021 
-- Design Name:    OR Gate with 2 Inputs
-- Module Name:    or_gate - Behavioral 
-- Project Name:   Computer Architecture Workshop 01
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end or_gate;

architecture Behavioral of or_gate is

begin
	c <= a or b;

end Behavioral;
