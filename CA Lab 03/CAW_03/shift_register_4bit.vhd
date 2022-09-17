----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:00 10/20/2021 
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
    Port ( D_in : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           D_out : out  STD_LOGIC);
end shift_register_4bit;

architecture Behavioral of shift_register_4bit is

component D_FF is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC);
end component D_FF;

signal Q : STD_LOGIC_VECTOR (2 downto 0);

begin

	D_FF_instance_0: D_FF port map (D => D_in, CLK => CLK, RST => RST, Q => Q(0));
	D_FF_instance_1: D_FF port map (D => Q(0), CLK => CLK, RST => RST, Q => Q(1));
	D_FF_instance_2: D_FF port map (D => Q(1), CLK => CLK, RST => RST, Q => Q(2));
	D_FF_instance_3: D_FF port map (D => Q(2), CLK => CLK, RST => RST, Q => D_out);

end Behavioral;

