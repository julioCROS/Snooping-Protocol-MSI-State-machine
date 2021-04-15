
set labelCount 6                                             
set uniqueLabel 195243184
#################################################################################


##Editing for Signal sim:/CPUrequest/bitMS
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 500 ps, Period = 100 ps
#################################################################################

        noforce sim:/CPUrequest/bitMS
        force -freeze sim:/CPUrequest/bitMS  St1 0 ps, St0 200 ps

when -label 195243184_1 {$now = @500 ps} {
        set whenArray(195243184_1) 195243184_1
        noforce sim:/CPUrequest/bitMS
        force -freeze sim:/CPUrequest/bitMS 0 0 ps
}


##Editing for Signal sim:/CPUrequest/invalid
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 500 ps, Period = 100 ps
#################################################################################

        noforce sim:/CPUrequest/invalid
        force -freeze sim:/CPUrequest/invalid  St0 0 ps, St1 400 ps

when -label 195243184_2 {$now = @500 ps} {
        set whenArray(195243184_2) 195243184_2
        noforce sim:/CPUrequest/invalid
        force -freeze sim:/CPUrequest/invalid 1 0 ps
}


##Editing for Signal sim:/CPUrequest/CPU_read_HitMiss
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 500 ps, Period = 50 ps
#################################################################################

        noforce sim:/CPUrequest/CPU_read_HitMiss
        force -freeze sim:/CPUrequest/CPU_read_HitMiss  St0 0 ps, St1 50 ps, HiZ 100 ps

when -label 195243184_3 {$now = @200 ps} {
        set whenArray(195243184_3) 195243184_3
        noforce sim:/CPUrequest/CPU_read_HitMiss
        force -freeze sim:/CPUrequest/CPU_read_HitMiss  St0 0 ps, St1 50 ps, HiZ 100 ps
}

when -label 195243184_4 {$now = @500 ps} {
        set whenArray(195243184_4) 195243184_4
        noforce sim:/CPUrequest/CPU_read_HitMiss
        force -freeze sim:/CPUrequest/CPU_read_HitMiss Z 0 ps
}


##Editing for Signal sim:/CPUrequest/CPU_write_HitMiss
# "Repeater Pattern" Repeat Never
# Start Time = 0 ps, End Time = 500 ps, Period = 50 ps
#################################################################################

        noforce sim:/CPUrequest/CPU_write_HitMiss
        force -freeze sim:/CPUrequest/CPU_write_HitMiss  HiZ 0 ps, St0 100 ps, St1 150 ps, HiZ 200 ps, St0 300 ps, St1 350 ps

when -label 195243184_5 {$now = @400 ps} {
        set whenArray(195243184_5) 195243184_5
        noforce sim:/CPUrequest/CPU_write_HitMiss
        force -freeze sim:/CPUrequest/CPU_write_HitMiss  HiZ 0 ps, St0 50 ps
}

when -label 195243184_6 {$now = @500 ps} {
        set whenArray(195243184_6) 195243184_6
        noforce sim:/CPUrequest/CPU_write_HitMiss
        force -freeze sim:/CPUrequest/CPU_write_HitMiss 0 0 ps
}
