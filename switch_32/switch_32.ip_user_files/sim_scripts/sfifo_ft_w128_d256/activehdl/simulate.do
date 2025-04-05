transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+sfifo_ft_w128_d256  -L xpm -L fifo_generator_v13_2_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sfifo_ft_w128_d256 xil_defaultlib.glbl

do {sfifo_ft_w128_d256.udo}

run 1000ns

endsim

quit -force
