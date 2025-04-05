onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib sram_w16_d512_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {sram_w16_d512.udo}

run 1000ns

quit -force
