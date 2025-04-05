-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat May  4 14:57:07 2024
-- Host        : Sherlock running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/vivado_project/switch/switch.gen/sources_1/ip/dpsram_w4_d512/dpsram_w4_d512_stub.vhdl
-- Design      : dpsram_w4_d512
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dpsram_w4_d512 is
  Port ( 
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end dpsram_w4_d512;

architecture stub of dpsram_w4_d512 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,wea[0:0],addra[8:0],dina[3:0],douta[3:0],clkb,web[0:0],addrb[8:0],dinb[3:0],doutb[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_6,Vivado 2023.1";
begin
end;
