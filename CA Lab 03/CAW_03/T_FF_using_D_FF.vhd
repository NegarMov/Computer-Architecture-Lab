----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:51 10/20/2021 
-- Design Name: 
-- Module Name:    T_FF_using_D_FF - Behavioral 
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

entity T_FF_using_D_FF is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end T_FF_using_D_FF;

architecture Behavioral of T_FF_using_D_FF is

component D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end component D_FF;

signal TMP: std_logic;
signal FF_input: std_logic;

begin
	
	FF_input <= T xor TMP;
	D_FF_instance: D_FF port map (D => FF_input, CLK => CLK, RST => RST, Q => TMP, Q_not => Q_not);
	Q <= TMP;

end Behavioral;

