--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    17:51:39 10/08/2021
-- Design Name:    Half Adder Test Bench
-- Module Name:    D:/ISE Design/CAW_01/half_addera_tb.vhd
-- Project Name:   Computer Architecture Workshop 01
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY half_adder_tb IS
END half_adder_tb;
 
ARCHITECTURE tb OF half_adder_tb IS 
   
   --Inputs
   signal a : std_logic;
   signal b : std_logic;

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.half_adder PORT MAP (
          a => a,
          b => b,
          sum => sum,
          cout => cout
        );

   a <= '0', '1' after 200 ns;
	b <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END tb;
