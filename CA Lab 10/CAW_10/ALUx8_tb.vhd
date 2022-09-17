--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:15:50 12/08/2021
-- Design Name:   
-- Module Name:   E:/Projects/ISE Design/CAW_10/ALUx8_tb.vhd
-- Project Name:  CAW_10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUx8
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
 
ENTITY ALUx8_tb IS
END ALUx8_tb;
 
ARCHITECTURE behavior OF ALUx8_tb IS 
  
   --Inputs
   signal Sel : std_logic_vector(2 downto 0) := (others => '0');
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(7 downto 0);
   signal Z : std_logic;
   signal C : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.ALUx8 PORT MAP (
          Sel => Sel,
          A => A,
          B => B,
          O => O,
          Z => Z,
          C => C
        );
	
	Sel <= "000", "001" after 100 ns, "010" after 200 ns,  "011" after 300 ns,  "100" after 400 ns, 
			 "101" after 500 ns,  "110" after 600 ns;
	A <= "01101001"; 
	B <= "11011011";

END;
