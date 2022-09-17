--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    18:06:29 10/08/2021
-- Design Name:    OR Gate with 4 Inputs Test Bench
-- Module Name:    D:/ISE Design/CAW_01/or_4_input_tb.vhd
-- Project Name:   Computer Architecture Workshop 01
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY or_4_input_tb IS
END or_4_input_tb;
 
ARCHITECTURE tb OF or_4_input_tb IS 
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal res : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.or_4_input PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          res => res
        );

	a <= '0', '1' after 400 ns;
	b <= '0', '1' after 200 ns, '0' after 400 ns, '1' after 600 ns;
	c <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns, 
		'0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns;
	d <= '0', '1' after 50 ns, '0' after 100 ns, '1' after 150 ns, 
		'0' after 200 ns, '1' after 250 ns, '0' after 300 ns, '1' after 350 ns, 
		'0' after 400 ns, '1' after 450 ns, '0' after 500 ns, '1' after 550 ns, 
		'0' after 600 ns, '1' after 650 ns, '0' after 700 ns, '1' after 750 ns;

END tb;
