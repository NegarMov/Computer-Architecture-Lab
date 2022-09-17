----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    14:52:59 10/13/2021
-- Design Name:    2 bit COMPARATOR using MUX
-- Module Name:    comparator_2bit - Behavioral 
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_2bit is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           a_gt_b : out  STD_LOGIC);
end comparator_2bit;

architecture Behavioral of comparator_2bit is

component mux_4to1 is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           m : out  STD_LOGIC);
end component mux_4to1;

signal tmp : STD_LOGIC;
signal mux_input : STD_LOGIC_VECTOR (3 downto 0);
signal mux_select : STD_LOGIC_VECTOR (1 downto 0);

-- 11, 01
begin
	tmp <= a(0) and (not b(0));
	mux_input <= tmp & '1' & '0' & tmp;
	mux_select <= a(1) & b(1);
	mux_4to1_instance: mux_4to1 port map (x => mux_input, s => mux_select, m => a_gt_b);

end Behavioral;

