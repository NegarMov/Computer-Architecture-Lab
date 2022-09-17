----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    09:09:49 10/13/2021 
-- Design Name:    DECODER 2:4
-- Module Name:    decoder_2to4 - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           d : out STD_LOGIC_VECTOR (3 downto 0));
end decoder_2to4;

architecture Behavioral of decoder_2to4 is

begin
	d(0) <= (not a(1)) and (not a(0));
	d(1) <= (not a(1)) and a(0);
	d(2) <= a(1) and (not a(0));
	d(3) <= a(1) and a(0);
	
end Behavioral;

