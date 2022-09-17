--------------------------------------------------------------------------------
-- Company: 	    AUT
-- Engineer:		 Negar Movaghatian
-- Student Number: 9831062
--
-- Create Date:   16:12:15 10/30/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_04/mealy_machine_tb.vhd
-- Project Name:  CAW_04
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mealy_machine
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
 
ENTITY mealy_machine_tb IS
END mealy_machine_tb;
 
ARCHITECTURE behavior OF mealy_machine_tb IS 

   --Inputs
   signal input : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.mealy_machine PORT MAP (
          input => input,
          CLK => CLK,
          output => output
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;

      input <= '0' after 15 ns, '1'  after 55 ns, '0' after 95 ns;

      wait;
   end process;

END;
