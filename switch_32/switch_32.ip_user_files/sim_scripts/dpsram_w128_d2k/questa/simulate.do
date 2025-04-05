onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dpsram_w128_d2k_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dpsram_w128_d2k.udo}

run 1000ns

quit -force
