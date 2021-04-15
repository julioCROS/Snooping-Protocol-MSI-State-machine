onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /CPUrequest/bitMS
add wave -noupdate /CPUrequest/invalid
add wave -noupdate /CPUrequest/MSI
add wave -noupdate /CPUrequest/CPU_read_HitMiss
add wave -noupdate /CPUrequest/CPU_write_HitMiss
add wave -noupdate /CPUrequest/next_MSI
add wave -noupdate /CPUrequest/invalidate
add wave -noupdate /CPUrequest/read_miss
add wave -noupdate /CPUrequest/write_miss
add wave -noupdate /CPUrequest/write_back
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {501 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {927 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern repeater -initialvalue 1 -period 200ps -sequence { 1 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/bitMS 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 200ps -sequence { 0 0 1  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/invalid 
wave create -pattern repeater -initialvalue 10 -period 200ps -sequence { 10 00 01  } -repeat never -range 1 0 -starttime 0ps -endtime 1000ps sim:/CPUrequest/MSI 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 1 Z Z 0 1 Z Z 0 Z Z Z  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_read_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue Z -period 50ps -sequence { Z Z 0 1 Z Z 0 1 Z 0 Z Z  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_write_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue 1 -period 100ps -sequence { 1 1 0 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/bitMS 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 200ps -sequence { 0 0 0 0 1  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/invalid 
wave create -pattern repeater -initialvalue 10 -period 100ps -sequence { 10 10 00 00 01  } -repeat never -range 1 0 -starttime 0ps -endtime 1000ps sim:/CPUrequest/MSI 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 1 Z Z 0 1 Z Z 0 Z  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_read_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue Z -period 50ps -sequence { Z Z 0 1 Z Z 0 1 Z 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_write_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue 1 -period 100ps -sequence { 1 1 0 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/bitMS 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 100ps -sequence { 0 0 0 0 1  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/invalid 
wave create -pattern repeater -initialvalue 10 -period 100ps -sequence { 10 10 00 00 01  } -repeat never -range 1 0 -starttime 0ps -endtime 1000ps sim:/CPUrequest/MSI 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 1 Z Z 0 1 Z Z 0 Z  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_read_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue Z -period 50ps -sequence { Z Z 0 1 Z Z 0 1 Z 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_write_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue 1 -period 100ps -sequence { 1 1 0 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/bitMS 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 100ps -sequence { 0 0 0 0 1  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/invalid 
wave create -pattern repeater -initialvalue 10 -period 100ps -sequence { 10 10 00 00 01  } -repeat never -range 1 0 -starttime 0ps -endtime 1000ps sim:/CPUrequest/MSI 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 1 Z Z 0 1 Z Z 0 Z  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_read_HitMiss 
wave create -driver freeze -pattern repeater -initialvalue Z -period 50ps -sequence { Z Z 0 1 Z Z 0 1 Z 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/CPUrequest/CPU_write_HitMiss 
{wave export -file C:/PraticaIV_AOC2_parte1/wave_form_CPUrequest.tcl -starttime 0 -endtime 500 -format force -designunit CPUrequest -f} 
WaveCollapseAll -1
wave clipboard restore
