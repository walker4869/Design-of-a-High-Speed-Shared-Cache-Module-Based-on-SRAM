onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dpsram_w4_d512_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dpsram_w4_d512.udo}

run 1000ns

quit -force
