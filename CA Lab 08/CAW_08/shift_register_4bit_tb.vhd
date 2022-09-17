--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:06:28 11/24/2021
-- Design Name:   
-- Module Name:   E:/Projects/ISE Design/CAW_08/shift_register_4bit_tb.vhd
-- Project Name:  CAW_08
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
   signal P : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal load : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.shift_register_4bit PORT MAP (
          P => P,
          CLK => CLK,
          load => load,
          RST => RST,
          Q => Q
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
      wait for 20 ns;	
		RST <= '0';
		
		wait for CLK_period*4;
		
		P <= "0110";
		wait for 20 ns;
		load <= '1';
		wait for 20 ns;
		load <= '0';
		
		wait for CLK_period*4;
		
		P <= "0000";
		wait for 20 ns;
		load <= '1';
		wait for 20 ns;
		load <= '0';
		
      wait;
   end process;

END;
