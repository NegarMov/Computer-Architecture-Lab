----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:23 11/24/2021 
-- Design Name: 
-- Module Name:    shift_register_4bit - Behavioral 
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

entity shift_register_4bit is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
           load : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end shift_register_4bit;

architecture Behavioral of shift_register_4bit is

component MUX is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           M : out  STD_LOGIC);
end component MUX;

component D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end component D_FF;

signal FF_out : STD_LOGIC_VECTOR (3 downto 0);
signal FF_in : STD_LOGIC_VECTOR (3 downto 0);

begin

	MUX_instance_0: MUX port map (A => P(0), B => '1', S => load, M => FF_in(0));
	MUX_instance_1: MUX port map (A => P(1), B => FF_out(0), S => load, M => FF_in(1));
	MUX_instance_2: MUX port map (A => P(2), B => FF_out(1), S => load, M => FF_in(2));
	MUX_instance_3: MUX port map (A => P(3), B => FF_out(2), S => load, M => FF_in(3));

	D_FF_instance_0: D_FF port map (D => FF_in(0), CLK => CLK, RST => RST, Q => FF_out(0));
	D_FF_instance_1: D_FF port map (D => FF_in(1), CLK => CLK, RST => RST, Q => FF_out(1));
	D_FF_instance_2: D_FF port map (D => FF_in(2), CLK => CLK, RST => RST, Q => FF_out(2));
	D_FF_instance_3: D_FF port map (D => FF_in(3), CLK => CLK, RST => RST, Q => FF_out(3));
	
	Q <= FF_out(3);

end Behavioral;

