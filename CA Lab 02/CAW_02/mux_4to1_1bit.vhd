----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    09:18:53 10/13/2021 
-- Design Name:    MUX 4:1 - 1 bit
-- Module Name:    mux_4to1 - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           m : out  STD_LOGIC);
end mux_4to1;

architecture Behavioral of mux_4to1 is

signal tmp_0 : STD_LOGIC;
signal tmp_1 : STD_LOGIC;
signal tmp_2 : STD_LOGIC;
signal tmp_3 : STD_LOGIC;

begin
	tmp_0 <= ((not s(1)) and (not s(0))) and x(0);
	tmp_1 <= ((not s(1)) and s(0)) and x(1);
	tmp_2 <= (s(1) and (not s(0))) and x(2); 
	tmp_3 <= (s(1) and s(0)) and x(3);
	
	m <= tmp_0 or tmp_1 or tmp_2 or tmp_3;

end Behavioral;

