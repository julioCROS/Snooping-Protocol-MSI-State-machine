onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /BUSrequest/read_miss
add wave -noupdate /BUSrequest/write_miss
add wave -noupdate /BUSrequest/invalidate
add wave -noupdate /BUSrequest/bitMS
add wave -noupdate /BUSrequest/invalid
add wave -noupdate /BUSrequest/MSI
add wave -noupdate /BUSrequest/next_MSI
add wave -noupdate /BUSrequest/write_back
add wave -noupdate /BUSrequest/abort_mem_access
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {249 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern repeater -initialvalue 1 -period 50ps -sequence { 1 0 1 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/BUSrequest/read_miss 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 1 0 1 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/BUSrequest/write_miss 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 0 0 0 1  } -repeat never -starttime 0ps -endtime 1000ps sim:/BUSrequest/invalidate 
wave create -driver freeze -pattern repeater -initialvalue 1 -period 50ps -sequence { 1 1 0 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/BUSrequest/bitMS 
wave create -driver freeze -pattern repeater -initialvalue 0 -period 50ps -sequence { 0 0 0 0 0  } -repeat never -starttime 0ps -endtime 1000ps sim:/BUSrequest/invalid 
wave create -pattern repeater -initialvalue 10 -period 50ps -sequence { 10 10 00 00 00  } -repeat never -range 1 0 -starttime 0ps -endtime 1000ps sim:/BUSrequest/MSI 
WaveExpandAll -1
{wave export -file C:/PraticaIV_AOC2_parte1/wave_form_BUSrequest -starttime 0 -endtime 250 -format force -designunit BUSrequest} 
WaveCollapseAll -1
wave clipboard restore
