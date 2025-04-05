transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {E:/vivado_project/switch/switch.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_6
vlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"E:/Xilinxapp/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinxapp/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"E:/Xilinxapp/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"../../../../switch.gen/sources_1/ip/sram_w16_d512/sim/sram_w16_d512.v" \

vlog -work xil_defaultlib \
"glbl.v"

