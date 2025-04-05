onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib sfifo_ft_w14_d1024_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {sfifo_ft_w14_d1024.udo}

run 1000ns

quit -force
