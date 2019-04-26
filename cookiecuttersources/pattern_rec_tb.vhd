----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2019 08:07:42 PM
-- Design Name: 
-- Module Name: pattern_rec_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pattern_rec_tb is
--  Port ( );
end pattern_rec_tb;

architecture Behavioral of pattern_rec_tb is
    signal clk, reset, start, oled_sdin, oled_sclk, oled_dc, oled_res, oled_vbat, oled_vdd: std_logic;
    signal adv, prev: std_logic;
begin
    uut: entity work.pattern_rec(Behavioral)
    port map(
                clk=>clk,
                reset=>reset,
                start=>start,
                adv=>adv,
                prev=>prev,
                oled_sdin => oled_sdin,
                oled_sclk=>oled_sclk,
                oled_dc => oled_dc,
                oled_res=> oled_res,
                oled_vbat => oled_vbat,
                oled_vdd => oled_vdd
            );
    process
    begin
        clk <= '0';
        wait for 20ns;
        clk <= '1';
        wait for 20ns;
    end process;
    process begin
        reset <= '1';
        wait for 200 ns;
        reset <= '0';
        wait for 200ns;
        start <= '1';
        adv <= '0';
        prev <= '0';
       -- wait for 550 ms;
      --  adv <= '1';
      --  wait for 50 ns;
    --    adv <= '0';
  --      wait for 300 ms;
--        adv <= '1';
    --    wait for 50 ns;
  --      adv <= '0';
       wait;
    end process;
end Behavioral;
