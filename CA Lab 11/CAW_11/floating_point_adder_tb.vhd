--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:24:42 12/17/2021
-- Design Name:   
-- Module Name:   E:/Projects/ISE Design/CAW_11/floating_point_adder_tb.vhd
-- Project Name:  CAW_11
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: floating_point_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY floating_point_adder_tb IS
END floating_point_adder_tb;
 
ARCHITECTURE behavior OF floating_point_adder_tb IS 

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.floating_point_adder PORT MAP (
          A => A,
          B => B,
          S => S
        );
		  
	A <= "00000000000000000000000000000000", "11000000101100000000000000000000" after 100 ns, "01000001011100000000000000000000" after 200 ns, "11000000101100000000000000000000" after 300 ns;
	B <= "01000001101001000000000000000000", "01000000101100000000000000000000" after 100 ns, "01000001101001000000000000000000" after 200 ns, "01000001101001000000000000000000" after 300 ns;
	

END;
