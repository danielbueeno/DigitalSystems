onerror {exit -code 1}
vlib work
vcom -work work Decoder2_4En.vho
vcom -work work DecoderTest.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Decoder2_4En_vhd_vec_tst
vcd file -direction Decoder2_4En.msim.vcd
vcd add -internal Decoder2_4En_vhd_vec_tst/*
vcd add -internal Decoder2_4En_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
