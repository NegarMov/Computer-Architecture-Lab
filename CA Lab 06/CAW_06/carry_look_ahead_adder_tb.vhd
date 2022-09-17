--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:58 11/10/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_06/carry_look_ahead_adder_tb.vhd
-- Project Name:  CAW_06
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_look_ahead_adder_4bit
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
 
ENTITY carry_look_ahead_adder_tb IS
END carry_look_ahead_adder_tb;
 
ARCHITECTURE behavior OF carry_look_ahead_adder_tb IS 

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.carry_look_ahead_adder_4bit PORT MAP (
          A => A,
          B => B,
          cin => cin,
          S => S,
          cout => cout
        );
		  
	A <= "0000", "0011" after 200 ns, "1011" after 400 ns;
	B <= "0000", "0100" after 100 ns, "1100" after 300 ns; 
	cin <= '0', '1' after 50 ns, '0' after 150 ns, '1' after 250 ns, '0' after 350 ns, '1' after 450 ns;

END;
