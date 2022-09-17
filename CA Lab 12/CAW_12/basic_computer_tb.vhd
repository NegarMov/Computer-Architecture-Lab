--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:34:49 12/27/2021
-- Design Name:   
-- Module Name:   E:/Projects/ISE Design/CAW_12/basic_computer_tb.vhd
-- Project Name:  CAW_12
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: basic_computer
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
 
ENTITY basic_computer_tb IS
END basic_computer_tb;
 
ARCHITECTURE behavior OF basic_computer_tb IS 

   --Inputs
   signal ROM_addr : std_logic_vector(3 downto 0) := (others => '0');
   signal RAM_addr : std_logic_vector(6 downto 0) := (others => '0');
   signal ALU_sel : std_logic_vector(2 downto 0) := (others => '0');
   signal REG_2_in : std_logic_vector(7 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.basic_computer PORT MAP (
          ROM_addr => ROM_addr,
          RAM_addr => RAM_addr,
          ALU_sel => ALU_sel,
          REG_2_in => REG_2_in,
          CLK => CLK,
          RST => RST,
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
      
		RST <= '1';
		ROM_addr <= "0001";
		RAM_addr <= "0000010";
		ALU_sel <= "000";
		REG_2_in <= "00000101";
      wait for 15 ns;	
		RST <= '0';
      wait;
		
   end process;

END;
