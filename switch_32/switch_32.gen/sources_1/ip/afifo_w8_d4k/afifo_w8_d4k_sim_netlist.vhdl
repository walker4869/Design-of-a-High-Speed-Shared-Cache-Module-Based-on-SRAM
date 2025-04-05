-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat May 18 19:56:29 2024
-- Host        : Sherlock running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/vivado_project/switch_32/switch_32.gen/sources_1/ip/afifo_w8_d4k/afifo_w8_d4k_sim_netlist.vhdl
-- Design      : afifo_w8_d4k
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity afifo_w8_d4k_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of afifo_w8_d4k_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of afifo_w8_d4k_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of afifo_w8_d4k_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of afifo_w8_d4k_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of afifo_w8_d4k_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of afifo_w8_d4k_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of afifo_w8_d4k_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of afifo_w8_d4k_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of afifo_w8_d4k_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of afifo_w8_d4k_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of afifo_w8_d4k_xpm_cdc_async_rst : entity is "ASYNC_RST";
end afifo_w8_d4k_xpm_cdc_async_rst;

architecture STRUCTURE of afifo_w8_d4k_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \afifo_w8_d4k_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \afifo_w8_d4k_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \afifo_w8_d4k_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \afifo_w8_d4k_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity afifo_w8_d4k_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of afifo_w8_d4k_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of afifo_w8_d4k_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of afifo_w8_d4k_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of afifo_w8_d4k_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of afifo_w8_d4k_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of afifo_w8_d4k_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of afifo_w8_d4k_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of afifo_w8_d4k_xpm_cdc_gray : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of afifo_w8_d4k_xpm_cdc_gray : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of afifo_w8_d4k_xpm_cdc_gray : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of afifo_w8_d4k_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of afifo_w8_d4k_xpm_cdc_gray : entity is "GRAY";
end afifo_w8_d4k_xpm_cdc_gray;

architecture STRUCTURE of afifo_w8_d4k_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair9";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => binval(1),
      O => binval(0)
    );
\dest_out_bin_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(11),
      O => binval(10)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => binval(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => binval(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => binval(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => binval(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => binval(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(10),
      I3 => \dest_graysync_ff[1]\(11),
      I4 => \dest_graysync_ff[1]\(9),
      I5 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(10),
      I4 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(9),
      O => binval(8)
    );
\dest_out_bin_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(10),
      O => binval(9)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(10),
      Q => dest_out_bin(10),
      R => '0'
    );
\dest_out_bin_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(11),
      Q => dest_out_bin(11),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \afifo_w8_d4k_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \afifo_w8_d4k_xpm_cdc_gray__2\ : entity is "GRAY";
end \afifo_w8_d4k_xpm_cdc_gray__2\;

architecture STRUCTURE of \afifo_w8_d4k_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][10]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][11]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[9]_i_1\ : label is "soft_lutpair4";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(10),
      Q => \dest_graysync_ff[0]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(11),
      Q => \dest_graysync_ff[0]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(10),
      Q => \dest_graysync_ff[1]\(10),
      R => '0'
    );
\dest_graysync_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(11),
      Q => \dest_graysync_ff[1]\(11),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => binval(1),
      O => binval(0)
    );
\dest_out_bin_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(10),
      I1 => \dest_graysync_ff[1]\(11),
      O => binval(10)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => binval(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => binval(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => binval(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => binval(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => binval(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(10),
      I3 => \dest_graysync_ff[1]\(11),
      I4 => \dest_graysync_ff[1]\(9),
      I5 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(10),
      I4 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(10),
      I2 => \dest_graysync_ff[1]\(11),
      I3 => \dest_graysync_ff[1]\(9),
      O => binval(8)
    );
\dest_out_bin_ff[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(11),
      I2 => \dest_graysync_ff[1]\(10),
      O => binval(9)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(10),
      Q => dest_out_bin(10),
      R => '0'
    );
\dest_out_bin_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(11),
      Q => dest_out_bin(11),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(11),
      I1 => src_in_bin(10),
      O => gray_enc(10)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(10),
      I1 => src_in_bin(9),
      O => gray_enc(9)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(10),
      Q => async_path(10),
      R => '0'
    );
\src_gray_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(11),
      Q => async_path(11),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity afifo_w8_d4k_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of afifo_w8_d4k_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of afifo_w8_d4k_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of afifo_w8_d4k_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of afifo_w8_d4k_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of afifo_w8_d4k_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of afifo_w8_d4k_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of afifo_w8_d4k_xpm_cdc_single : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of afifo_w8_d4k_xpm_cdc_single : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of afifo_w8_d4k_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of afifo_w8_d4k_xpm_cdc_single : entity is "SINGLE";
end afifo_w8_d4k_xpm_cdc_single;

architecture STRUCTURE of afifo_w8_d4k_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \afifo_w8_d4k_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \afifo_w8_d4k_xpm_cdc_single__2\ : entity is "SINGLE";
end \afifo_w8_d4k_xpm_cdc_single__2\;

architecture STRUCTURE of \afifo_w8_d4k_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 177568)
`protect data_block
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
F7x+9I3wXESugBwYUg==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity afifo_w8_d4k is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of afifo_w8_d4k : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of afifo_w8_d4k : entity is "afifo_w8_d4k,fifo_generator_v13_2_8,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of afifo_w8_d4k : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of afifo_w8_d4k : entity is "fifo_generator_v13_2_8,Vivado 2023.1";
end afifo_w8_d4k;

architecture STRUCTURE of afifo_w8_d4k is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 1;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 1;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 4093;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 4092;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.afifo_w8_d4k_fifo_generator_v13_2_8
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(11 downto 0) => NLW_U0_data_count_UNCONNECTED(11 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(11 downto 0) => B"000000000000",
      prog_empty_thresh_assert(11 downto 0) => B"000000000000",
      prog_empty_thresh_negate(11 downto 0) => B"000000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(11 downto 0) => B"000000000000",
      prog_full_thresh_assert(11 downto 0) => B"000000000000",
      prog_full_thresh_negate(11 downto 0) => B"000000000000",
      rd_clk => rd_clk,
      rd_data_count(11 downto 0) => rd_data_count(11 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(11 downto 0) => wr_data_count(11 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
