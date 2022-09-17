--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:40:18 10/24/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_03/T_FF_using_D_FF_tb.vhd
-- Project Name:  CAW_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_FF_using_D_FF
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
 
ENTITY T_FF_using_D_FF_tb IS
END T_FF_using_D_FF_tb;
 
ARCHITECTURE behavior OF T_FF_using_D_FF_tb IS 

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_not : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.T_FF_using_D_FF PORT MAP (
          T => T,
          CLK => CLK,
          RST => RST,
          Q => Q,
          Q_not => Q_not
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
		
		T <= '0', '1' after 15 ns, '0' after 35 ns, '1' after 55 ns;
      wait;
   end process;

END;
