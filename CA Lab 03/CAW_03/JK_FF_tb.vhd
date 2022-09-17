--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:09:04 10/24/2021
-- Design Name:   
-- Module Name:   D:/ISE Design/CAW_03/JK_FF_tb.vhd
-- Project Name:  CAW_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_FF
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
 
ENTITY JK_FF_tb IS
END JK_FF_tb;
 
ARCHITECTURE behavior OF JK_FF_tb IS 
    
   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_not : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.JK_FF PORT MAP (
          J => J,
          K => K,
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

      J <= '0', '1' after 15 ns, '0' after 35 ns,  '1' after 55 ns;
		K <= '0', '1' after 35 ns;
      wait;
   end process;

END;
