--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:00:58 10/24/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_03/shift_register_4bit_tb.vhd
-- Project Name:  CAW_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_register_4bit
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
 
ENTITY shift_register_4bit_tb IS
END shift_register_4bit_tb;
 
ARCHITECTURE behavior OF shift_register_4bit_tb IS 

   --Inputs
   signal D_in : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal D_out : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.shift_register_4bit PORT MAP (
          D_in => D_in,
          CLK => CLK,
          RST => RST,
          D_out => D_out
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
      -- hold reset state for 20 ns.
		RST <= '1';
      wait for 20 ns;
		RST <= '0';
		
		D_in <= '1', '0' after 35 ns, '0' after 55 ns, '1' after 75 ns, '0' after 95 ns;
      wait;
   end process;

END;
