----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:20 10/20/2021 
-- Design Name: 
-- Module Name:    counter_4bit - Behavioral 
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

entity counter_4bit is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_4bit;

architecture Behavioral of counter_4bit is

component T_FF is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  EN : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end component T_FF;

signal tmp : STD_LOGIC_VECTOR (3 downto 0);
signal FF_input : STD_LOGIC_VECTOR (3 downto 0);

begin

	FF_input(0) <= '1';
	FF_input(1) <= tmp(0);
	FF_input(2) <= tmp(0) and tmp(1);
	FF_input(3) <= tmp(0) and tmp(1) and tmp(2);

	T_FF_instance_0: T_FF port map (T => FF_input(0), CLK => CLK, RST => RST, EN => EN, Q => tmp(0));
	T_FF_instance_1: T_FF port map (T => FF_input(1), CLK => CLK, RST => RST, EN => EN, Q => tmp(1));
	T_FF_instance_2: T_FF port map (T => FF_input(2), CLK => CLK, RST => RST, EN => EN, Q => tmp(2));
	T_FF_instance_3: T_FF port map (T => FF_input(3), CLK => CLK, RST => RST, EN => EN, Q => tmp(3));
	
	Q(0) <= tmp(0);
	Q(1) <= tmp(1);
	Q(2) <= tmp(2);
	Q(3) <= tmp(3);

end Behavioral;

