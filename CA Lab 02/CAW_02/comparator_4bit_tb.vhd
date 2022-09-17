--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    13:17:47 10/13/2021
-- Design Name:    4 bit COMPARATOR Test Bench
-- Module Name:    D:/ISE Design/CAW_02/comparator_4bit_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY comparator_4bit_tb IS
END comparator_4bit_tb;
 
ARCHITECTURE behavior OF comparator_4bit_tb IS     

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal GTO : std_logic;
   signal EQO : std_logic;
   signal LTO : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.comparator_4bit PORT MAP (
          A => A,
          B => B,
          GTO => GTO,
          EQO => EQO,
          LTO => LTO
        );
	
	A <= "0001", "0010" after 100 ns, "0011" after 200 ns, "1010" after 300 ns;
	B <= "0011";

END;
