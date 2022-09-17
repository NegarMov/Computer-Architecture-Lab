--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    18:28:04 10/08/2021
-- Design Name:    Full Adder Test Bench
-- Module Name:    D:/ISE Design/CAW_01/full_addera_tb.vhd
-- Project Name:   Computer Architecture Workshop 01
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE tb OF full_adder_tb IS 
 
   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.full_adder PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );
	
	a <= '0', '1' after 400 ns;
	b <= '0', '1' after 200 ns, '0' after 400 ns, '1' after 600 ns;	
	cin <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns, 
		'0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns;

END tb;
