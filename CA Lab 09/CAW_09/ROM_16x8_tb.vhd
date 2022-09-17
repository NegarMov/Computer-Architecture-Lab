--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:01:52 12/01/2021
-- Design Name:   
-- Module Name:   E:/Projects/ISE Design/CAW_09/ROM_16x8_tb.vhd
-- Project Name:  CAW_09
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_16x8
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
 
ENTITY ROM_16x8_tb IS
END ROM_16x8_tb;
 
ARCHITECTURE behavior OF ROM_16x8_tb IS 
	
	--Inputs
   signal address : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.ROM_16x8 PORT MAP (
          address => address,
          data => data
        );

   address <= "0000", "0001" after 20 ns,  "0010" after 40 ns, "0011" after 60 ns,  
					"0100" after 80 ns, "0101" after 100 ns, "0110" after 120 ns, "0111" after 140 ns,
					"1000" after 160 ns, "1001" after 180 ns, "1010" after 200 ns, "1011" after 220 ns,
					"1100" after 240 ns, "1101" after 260 ns, "1110" after 280 ns, "1111" after 300 ns;

END;
