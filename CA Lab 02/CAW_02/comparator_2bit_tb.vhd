--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    23:58:54 10/13/2021
-- Design Name:    2 Bit COMPARATOR using MUX Test Bench
-- Module Name:    D:/ISE Design/CAW_01/comparator_2bit_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY comparator_2bit_tb IS
END comparator_2bit_tb;
 
ARCHITECTURE behavior OF comparator_2bit_tb IS 

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal a_gt_b : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.comparator_2bit PORT MAP (
          a => a,
          b => b,
          a_gt_b => a_gt_b
        );
	
	a <= "00", "01" after 100 ns, "10" after 200 ns, "11" after 300 ns;
	b <= "01";

END;
