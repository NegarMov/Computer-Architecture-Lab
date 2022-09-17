----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:21 12/01/2021 
-- Design Name: 
-- Module Name:    ROM_16x8 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ROM16x8 is
    Port ( address : in  STD_LOGIC_VECTOR (3 downto 0);
           data : out  STD_LOGIC_VECTOR (7 downto 0));
end ROM16x8;

architecture Behavioral of ROM16x8 is

type memory is Array(0 to 15) of std_logic_vector(7 downto 0);
-- in order to make the result easy to read, each row of this ROM is initiated with (row number + 5)
signal rom: memory := ("00000101", "00000110", "00000111", "00001000", "00001001", "00001010", 
								"00001011", "00001100", "00001101", "00001110","00001111", "00010000", 
								"00010001", "00010010", "00010011", "00010100");

begin

	data <= rom(conv_integer(address));

end Behavioral;

