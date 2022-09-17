----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    09:25:03 10/13/2021 
-- Design Name:    MUX 4:1 - 4 bit
-- Module Name:    mux_4to1_4bit - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (3 downto 0);
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           S_0 : in  STD_LOGIC;
           S_1 : in  STD_LOGIC;
           M : out  STD_LOGIC_VECTOR (3 downto 0));
end mux_4to1_4bit;

architecture Behavioral of mux_4to1_4bit is

component mux_4to1_1bit is
    Port ( X_0 : in  STD_LOGIC;
           X_1 : in  STD_LOGIC;
           X_2 : in  STD_LOGIC;
           X_3 : in  STD_LOGIC;
           S_0 : in  STD_LOGIC;
           S_1 : in  STD_LOGIC;
           M : out  STD_LOGIC);
end component mux_4to1_1bit;

begin
	mux_4to1_1bit_0: mux_4to1_1bit port map (X_0 => A(0), X_1 => B(0), X_2 => C(0), X_3 => D(0), S_0 => S_0, S_1 => S_1, M => M(0));
	mux_4to1_1bit_1: mux_4to1_1bit port map (X_0 => A(1), X_1 => B(1), X_2 => C(1), X_3 => D(1), S_0 => S_0, S_1 => S_1, M => M(1));
	mux_4to1_1bit_2: mux_4to1_1bit port map (X_0 => A(2), X_1 => B(2), X_2 => C(2), X_3 => D(2), S_0 => S_0, S_1 => S_1, M => M(2));
	mux_4to1_1bit_3: mux_4to1_1bit port map (X_0 => A(3), X_1 => B(3), X_2 => C(3), X_3 => D(3), S_0 => S_0, S_1 => S_1, M => M(3));

end Behavioral;

