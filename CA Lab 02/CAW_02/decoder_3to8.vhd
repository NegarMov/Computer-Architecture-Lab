----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    15:35:03 10/13/2021
-- Design Name:    DECODER 3:8
-- Module Name:    decoder_3to8 - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3to8 is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder_3to8;

architecture Behavioral of decoder_3to8 is

begin
	d(0) <= (not a(2)) and (not a(1)) and (not a(0));
	d(1) <= (not a(2)) and (not a(1)) and a(0);
	d(2) <= (not a(2)) and a(1) and (not a(0));
	d(3) <= (not a(2)) and a(1) and a(0);
	d(4) <= a(2) and (not a(1)) and (not a(0));
	d(5) <= a(2) and (not a(1)) and a(0);
	d(6) <= a(2) and a(1) and (not a(0));
	d(7) <= a(2) and a(1) and a(0);

end Behavioral;

