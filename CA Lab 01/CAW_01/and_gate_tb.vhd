--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    16:47:01 10/08/2021
-- Design Name:    AND Gate with 2 Inputs Test Bench
-- Module Name:    D:/ISE Design/CAW_01/and_gate_tb.vhd
-- Project Name:   Computer Architecture Workshop 01
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY and_gate_tb IS
END and_gate_tb;
 
ARCHITECTURE tb OF and_gate_tb IS 

   --Inputs
   signal a : std_logic;
   signal b : std_logic;

 	--Outputs
   signal c : std_logic;
 
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.and_gate PORT MAP (
          a => a,
          b => b,
          c => c
        );
		  
	a <= '0', '1' after 200 ns;
	b <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END tb;
