----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    09:45:55 10/13/2021  
-- Design Name:    4 bit COMPARATOR
-- Module Name:    comparator_4bit - Behavioral 
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  GTO : out  STD_LOGIC;
           EQO : out  STD_LOGIC;
           LTO : out  STD_LOGIC);
end comparator_4bit;

architecture Behavioral of comparator_4bit is

component comparator_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           GTI : in  STD_LOGIC;
           EQI : in  STD_LOGIC;
           LTI : in  STD_LOGIC;
           GTO : out  STD_LOGIC;
           EQO : out  STD_LOGIC;
           LTO : out  STD_LOGIC);
end component comparator_1bit;

signal gt_tmp : STD_LOGIC_VECTOR(2 downto 0);
signal eq_tmp : STD_LOGIC_VECTOR(2 downto 0);
signal lt_tmp : STD_LOGIC_VECTOR(2 downto 0);

begin
	comparator_1bit_0: comparator_1bit port map (A => A(0), B => B(0), GTI => '0', EQI => '1', LTI => '0', GTO => gt_tmp(0), EQO => eq_tmp(0), LTO => lt_tmp(0));
	comparator_1bit_1: comparator_1bit port map (A => A(1), B => B(1), GTI => gt_tmp(0), EQI => eq_tmp(0), LTI => lt_tmp(0), GTO => gt_tmp(1), EQO => eq_tmp(1), LTO => lt_tmp(1));
	comparator_1bit_2: comparator_1bit port map (A => A(2), B => B(2), GTI => gt_tmp(1), EQI => eq_tmp(1), LTI => lt_tmp(1), GTO => gt_tmp(2), EQO => eq_tmp(2), LTO => lt_tmp(2));
	comparator_1bit_3: comparator_1bit port map (A => A(3), B => B(3), GTI => gt_tmp(2), EQI => eq_tmp(2), LTI => lt_tmp(2), GTO => GTO, EQO => EQO, LTO => LTO);

end Behavioral;

