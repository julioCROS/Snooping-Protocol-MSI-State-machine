
set labelCount 7                                             
set uniqueLabel 187765104
#################################################################################


##Editing for Signal sim:/BUSrequest/read_miss
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 250 ps, Period = 50 ps
#################################################################################

        noforce sim:/BUSrequest/read_miss
        force -freeze sim:/BUSrequest/read_miss  St1 0 ps, St0 50 ps

when -label 187765104_1 {$now = @100 ps} {
        set whenArray(187765104_1) 187765104_1
        noforce sim:/BUSrequest/read_miss
        force -freeze sim:/BUSrequest/read_miss  St1 0 ps, St0 50 ps
}

when -label 187765104_2 {$now = @250 ps} {
        set whenArray(187765104_2) 187765104_2
        noforce sim:/BUSrequest/read_miss
        force -freeze sim:/BUSrequest/read_miss 0 0 ps
}


##Editing for Signal sim:/BUSrequest/write_miss
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 250 ps, Period = 50 ps
#################################################################################

        noforce sim:/BUSrequest/write_miss
        force -freeze sim:/BUSrequest/write_miss  St0 0 ps, St1 50 ps

when -label 187765104_3 {$now = @100 ps} {
        set whenArray(187765104_3) 187765104_3
        noforce sim:/BUSrequest/write_miss
        force -freeze sim:/BUSrequest/write_miss  St0 0 ps, St1 50 ps
}

when -label 187765104_4 {$now = @250 ps} {
        set whenArray(187765104_4) 187765104_4
        noforce sim:/BUSrequest/write_miss
        force -freeze sim:/BUSrequest/write_miss 0 0 ps
}


##Editing for Signal sim:/BUSrequest/invalidate
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 250 ps, Period = 50 ps
#################################################################################

        noforce sim:/BUSrequest/invalidate
        force -freeze sim:/BUSrequest/invalidate  St0 0 ps, St1 200 ps

when -label 187765104_5 {$now = @250 ps} {
        set whenArray(187765104_5) 187765104_5
        noforce sim:/BUSrequest/invalidate
        force -freeze sim:/BUSrequest/invalidate 1 0 ps
}


##Editing for Signal sim:/BUSrequest/bitMS
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 250 ps, Period = 50 ps
#################################################################################

        noforce sim:/BUSrequest/bitMS
        force -freeze sim:/BUSrequest/bitMS  St1 0 ps, St0 100 ps

when -label 187765104_6 {$now = @250 ps} {
        set whenArray(187765104_6) 187765104_6
        noforce sim:/BUSrequest/bitMS
        force -freeze sim:/BUSrequest/bitMS 0 0 ps
}


##Editing for Signal sim:/BUSrequest/invalid
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 250 ps, Period = 50 ps
#################################################################################

        noforce sim:/BUSrequest/invalid
        force -freeze sim:/BUSrequest/invalid  St0 0 ps

when -label 187765104_7 {$now = @250 ps} {
        set whenArray(187765104_7) 187765104_7
        noforce sim:/BUSrequest/invalid
        force -freeze sim:/BUSrequest/invalid 0 0 ps
}
