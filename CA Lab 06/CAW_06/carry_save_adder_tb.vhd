--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:11:50 11/10/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_06/carry_save_adder_tb.vhd
-- Project Name:  CAW_06
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_save_adder_4bit
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

ENTITY carry_save_adder_tb IS
END carry_save_adder_tb;
 
ARCHITECTURE behavior OF carry_save_adder_tb IS 

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(4 downto 0);
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.carry_save_adder_4bit PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S,
			 cout => cout
        );

   A <= "0000", "0011" after 200 ns, "0110" after 400 ns, "1111" after 450 ns;
	B <= "0000", "0010" after 100 ns, "0101" after 300 ns, "1111" after 450 ns; 
	C <= "0000", "0001" after 50 ns, "0100" after 100 ns, "0111" after 150 ns, "1000" after 200 ns,
			"1001" after 250 ns, "1011" after 300 ns, "1100" after 350 ns, "1101" after 400 ns, "1111" after 450 ns; 

END;
