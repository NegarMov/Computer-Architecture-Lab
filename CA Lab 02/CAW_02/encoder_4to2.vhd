----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    09:15:15 10/13/2021 
-- Design Name:    ENCODER 4:2
-- Module Name:    encoder_4to2 - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4to2 is
    Port ( D_0 : in  STD_LOGIC;
           D_1 : in  STD_LOGIC;
           D_2 : in  STD_LOGIC;
           D_3 : in  STD_LOGIC;
           A_0 : out  STD_LOGIC;
           A_1 : out  STD_LOGIC);
end encoder_4to2;

architecture Behavioral of encoder_4to2 is

begin
	A_0 <= D_1 or D_3;
	A_1 <= D_2 or D_3;

end Behavioral;

