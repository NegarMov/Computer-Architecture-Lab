-----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    15:10:31 10/13/2021
-- Design Name:    MUX 4:1 using DECODER 2:4
-- Module Name:    mux_4to1_using_decoder - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_using_decoder is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           m : out  STD_LOGIC);
end mux_4to1_using_decoder;

architecture Behavioral of mux_4to1_using_decoder is

component decoder_2to4 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           d : out STD_LOGIC_VECTOR (3 downto 0));
end component decoder_2to4;

signal tmp : STD_LOGIC_VECTOR (3 downto 0);
signal and_tmp : STD_LOGIC_VECTOR (3 downto 0);

begin
	decoder_2to4_instanc: decoder_2to4 port map (a => s, d => tmp);
	
	and_tmp(0) <= x(0) and tmp(0);
	and_tmp(1) <= x(1) and tmp(1);
	and_tmp(2) <= x(2) and tmp(2);
	and_tmp(3) <= x(3) and tmp(3);
	
	m <= and_tmp(0) or and_tmp(1) or and_tmp(2) or and_tmp(3);

end Behavioral;

