----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:25 11/18/2021 
-- Design Name: 
-- Module Name:    array_multiplier - Behavioral 
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

entity array_multiplier is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           P : out  STD_LOGIC_VECTOR (8 downto 0));
end array_multiplier;

architecture Behavioral of array_multiplier is

component ripple_adder_5bit is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (4 downto 0);
           cout : out  STD_LOGIC);
end component ripple_adder_5bit;

-- digits product
signal dp_0 : STD_LOGIC_VECTOR (4 downto 0);
signal dp_1 : STD_LOGIC_VECTOR (4 downto 0);
signal dp_2 : STD_LOGIC_VECTOR (4 downto 0);
signal dp_3 : STD_LOGIC_VECTOR (4 downto 0);

-- partial products
signal pp_0 : STD_LOGIC_VECTOR (5 downto 0);
signal pp_1 : STD_LOGIC_VECTOR (5 downto 0);
signal pp_2 : STD_LOGIC_VECTOR (5 downto 0);

begin

	dp_0 <= (A(0) & A(0) & A(0) & A(0) & A(0)) and B;
	dp_1 <= (A(1) & A(1) & A(1) & A(1) & A(1)) and B;
	dp_2 <= (A(2) & A(2) & A(2) & A(2) & A(2)) and B;
	dp_3 <= (A(3) & A(3) & A(3) & A(3) & A(3)) and B;

	ra_0 : ripple_adder_5bit port map (A => ('0' & dp_0(4 downto 1)), B => dp_1, cin => '0', S => pp_0(4 downto 0), cout => pp_0(5));
	ra_1 : ripple_adder_5bit port map (A => pp_0(5 downto 1), B => dp_2, cin => '0', S => pp_1(4 downto 0), cout => pp_1(5));
	ra_2 : ripple_adder_5bit port map (A => pp_1(5 downto 1), B => dp_3, cin => '0', S => pp_2(4 downto 0), cout => pp_2(5));
	
	P(0) <= dp_0(0);
	P(1) <= pp_0(0);
	P(2) <= pp_1(0);
	P(8 downto 3) <= pp_2;
	
end Behavioral;

