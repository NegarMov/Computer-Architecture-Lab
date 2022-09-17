--------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    13:11:53 10/13/2021
-- Design Name:    MUX 4:1 - 4 bit Test Bench
-- Module Name:    D:/ISE Design/CAW_02/mux_4to1_4bit_tb.vhd
-- Project Name:   Computer Architecture Lab 02
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_4to1_4bit_tb IS
END mux_4to1_4bit_tb;
 
ARCHITECTURE tb OF mux_4to1_4bit_tb IS 
 
   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(3 downto 0) := (others => '0');
   signal D : std_logic_vector(3 downto 0) := (others => '0');
   signal S_0 : std_logic := '0';
   signal S_1 : std_logic := '0';

 	--Outputs
   signal M : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.mux_4to1_4bit PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          S_0 => S_0,
          S_1 => S_1,
          M => M
        );

   A <= "0001";
	B <= "0010";
	C <= "0011";
	D <= "0100";

	S_1 <= '0', '1' after 200 ns;
	S_0 <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END tb;
