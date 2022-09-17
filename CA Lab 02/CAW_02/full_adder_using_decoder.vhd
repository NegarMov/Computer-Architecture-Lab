----------------------------------------------------------------------------------
-- Company:  		 AUT
-- Author: 			 Negar Movaghatian
-- Student ID:		 9831062
-- 
-- Create Date:    15:32:02 10/13/2021  
-- Design Name:    Full Adder using DECODER 3:8
-- Module Name:    full_adder_using_decoder - Behavioral
-- Project Name:   Computer Architecture Lab 02
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_using_decoder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end full_adder_using_decoder;

architecture Behavioral of full_adder_using_decoder is

component decoder_3to8 is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end component decoder_3to8;

component nand_4_input is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC);
end component nand_4_input;

signal tmp : STD_LOGIC_VECTOR (7 downto 0);
signal decoder_input : STD_LOGIC_VECTOR (2 downto 0);
signal tmp_not : STD_LOGIC_VECTOR (7 downto 0);
signal nand_input_0 : STD_LOGIC_VECTOR (3 downto 0);
signal nand_input_1 : STD_LOGIC_VECTOR (3 downto 0);

begin
	decoder_input <= a & b & cin;
	decoder_3to8_instance : decoder_3to8 port map (a => decoder_input, d => tmp);
	
	tmp_not <= not tmp;
	
	nand_input_0 <= tmp_not(1) & tmp_not(2) & tmp_not(4) & tmp_not(7);
	nand_input_1 <= tmp_not(3) & tmp_not(5) & tmp_not(6) & tmp_not(7);
	nand_4_input_instance_0 : nand_4_input port map (a => nand_input_0, res => sum);
	nand_4_input_instance_1 : nand_4_input port map (a => nand_input_1, res => cout);

end Behavioral;

