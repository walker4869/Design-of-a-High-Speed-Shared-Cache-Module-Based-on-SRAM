transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+sfifo_w8_d16k  -L xpm -L fifo_generator_v13_2_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sfifo_w8_d16k xil_defaultlib.glbl

do {sfifo_w8_d16k.udo}

run 1000ns

endsim

quit -force
