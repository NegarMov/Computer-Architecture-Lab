--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    13:06:16 10/13/2021
-- Design Name:    ENCODER 2:4 Test Bench
-- Module Name:    D:/ISE Design/CAW_02/encoder_2to4_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY encoder_4to2_tb IS
END encoder_4to2_tb;
 
ARCHITECTURE tb OF encoder_4to2_tb IS 

   --Inputs
   signal D_0 : std_logic := '0';
   signal D_1 : std_logic := '0';
   signal D_2 : std_logic := '0';
   signal D_3 : std_logic := '0';

 	--Outputs
   signal A_0 : std_logic;
   signal A_1 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.encoder_4to2 PORT MAP (
          D_0 => D_0,
          D_1 => D_1,
          D_2 => D_2,
          D_3 => D_3,
          A_0 => A_0,
          A_1 => A_1
        );
	
	D_0 <= '1', '0' after 100 ns;
	D_1 <= '0', '1' after 200 ns, '0' after 300 ns;
	D_2 <= '0', '1' after 300 ns, '0' after 400 ns;
	D_3 <= '0', '1' after 400 ns, '0' after 500 ns;

END tb;
