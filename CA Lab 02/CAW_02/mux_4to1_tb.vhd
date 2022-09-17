--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    10:28:09 10/14/2021
-- Design Name:    MUX 4:1 Test Bench
-- Module Name:    D:/ISE Design/CAW_01/mux_4to1_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_4to1_tb IS
END mux_4to1_tb;
 
ARCHITECTURE tb OF mux_4to1_tb IS 

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal m : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.mux_4to1 PORT MAP (
          x => x,
          s => s,
          m => m
        );
	
	x <= "0100";
	s <= "00", "01" after 100 ns, "10" after 200 ns, "11" after 300 ns;

END tb;
