transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/danie/Documents/prog/DigitalSystems/Trab7/Part1/Dec2_4En.vhd}

