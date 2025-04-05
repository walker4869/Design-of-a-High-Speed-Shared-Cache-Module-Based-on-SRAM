onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib sfifo_w8_d16k_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {sfifo_w8_d16k.udo}

run 1000ns

quit -force
