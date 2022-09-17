--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:56 11/03/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_05/bcd_adder_tb.vhd
-- Project Name:  CAW_05
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_adder
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
 
ENTITY bcd_adder_tb IS
END bcd_adder_tb;
 
ARCHITECTURE behavior OF bcd_adder_tb IS 

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal C : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.bcd_adder PORT MAP (
          A => A,
          B => B,
          S => S,
          C => C
        );
	
	A <= "0000", "0010" after 100 ns, "0111" after 200 ns;
	B <= "0000", "0011" after 50 ns, "1001" after 150 ns;

END;
