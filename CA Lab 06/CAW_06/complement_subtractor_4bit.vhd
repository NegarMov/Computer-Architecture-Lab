----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:53:02 11/10/2021 
-- Design Name: 
-- Module Name:    complement_subtractor_4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complement_subtractor_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           bout : out  STD_LOGIC);
end complement_subtractor_4bit;

architecture Behavioral of complement_subtractor_4bit is

component ripple_adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component ripple_adder_4bit;

signal Bp : STD_LOGIC_VECTOR (3 downto 0);
signal cout : STD_LOGIC;

begin
	
	Bp <= not B;
	ripple_adder_instance: ripple_adder_4bit port map (A => A, B => Bp, cin => '1', S => S, cout => cout);
	bout <= not cout;
	
end Behavioral;

