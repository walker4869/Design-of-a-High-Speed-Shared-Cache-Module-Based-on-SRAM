transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+sram_w16_d512  -L xpm -L blk_mem_gen_v8_4_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sram_w16_d512 xil_defaultlib.glbl

do {sram_w16_d512.udo}

run 1000ns

endsim

quit -force
