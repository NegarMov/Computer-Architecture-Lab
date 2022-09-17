--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    12:54:41 10/13/2021
-- Design Name:    DECODER 2:4 Test Bench
-- Module Name:    D:/ISE Design/CAW_02/decoder_2to4_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder_2to4_tb IS
END decoder_2to4_tb;
 
ARCHITECTURE tb OF decoder_2to4_tb IS 

   --Inputs
   signal A_0 : std_logic := '0';
   signal A_1 : std_logic := '0';

 	--Outputs
   signal D_0 : std_logic;
   signal D_1 : std_logic;
   signal D_2 : std_logic;
   signal D_3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.decoder_2to4 PORT MAP (
          A_0 => A_0,
          A_1 => A_1,
          D_0 => D_0,
          D_1 => D_1,
          D_2 => D_2,
          D_3 => D_3
        );

   A_1 <= '0', '1' after 200 ns;
	A_0 <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END tb;
