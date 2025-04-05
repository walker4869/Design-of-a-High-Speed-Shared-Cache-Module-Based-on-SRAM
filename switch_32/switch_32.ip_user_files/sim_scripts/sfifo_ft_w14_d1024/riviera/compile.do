transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {E:/vivado_project/switch_32/switch_32.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_8
vlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"E:/Xilinxapp/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinxapp/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"E:/Xilinxapp/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -v2k5 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  -incr \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -v2k5 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l fifo_generator_v13_2_8 -l xil_defaultlib \
"../../../../switch_32.gen/sources_1/ip/sfifo_ft_w14_d1024/sim/sfifo_ft_w14_d1024.v" \

vlog -work xil_defaultlib \
"glbl.v"

