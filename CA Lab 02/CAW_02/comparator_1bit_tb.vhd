--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    23:54:20 10/13/2021
-- Design Name:    1 Bit COMPARATOR Test Bench
-- Module Name:    D:/ISE Design/CAW_01/comparator_1bit_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY comparator_1bit_tb IS
END comparator_1bit_tb;
 
ARCHITECTURE behavior OF comparator_1bit_tb IS 
 
   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal g : std_logic;
   signal e : std_logic;
   signal s : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.comparator_1bit PORT MAP (
          a => a,
          b => b,
          g => g,
          e => e,
          s => s
        );
		  
	a <= '0', '1' after 200 ns;
	b <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END;
