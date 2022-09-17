--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:17:26 11/18/2021
-- Design Name:   
-- Module Name:   E:/Projects/ISE Design/CAW_07/save_adder_multiplier_tb.vhd
-- Project Name:  CAW_07
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: save_adder_multiplier
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
 
ENTITY save_adder_multiplier_tb IS
END save_adder_multiplier_tb;
 
ARCHITECTURE behavior OF save_adder_multiplier_tb IS     

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(8 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.save_adder_multiplier PORT MAP (
          A => A,
          B => B,
          P => P
        );
		  
	A <= "1111", "0010" after 100 ns, "1010" after 200 ns;
	B <= "11111", "01010" after 50 ns, "10000" after 150 ns, "00000" after 250 ns;

END;
