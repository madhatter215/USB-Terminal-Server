#!/bin/bash

base_dir=/home/rendell/digi_sim


# do this forever
while true
do

    # make sure we have fifo0
    if [ ! -e $base_dir/fifo0 ]
    then
	mkfifo $base_dir/fifo0
    fi
    
    # make sure we have fifo1
    if [ ! -e $base_dir/fifo1 ]
    then
	mkfifo $base_dir/fifo1
    fi
    

    # create a 2 way connection between nc and digi_interface_sim.exp
    ( nc -l 23 > $base_dir/fifo0 < $base_dir/fifo1 ) &

    # UNCOMMENT ONE OF THESE: expect debug mode "-d"
    #(expect -d $base_dir/digi_interface_sim.exp > fifo1 < fifo0) &
    (expect $base_dir/digi_interface_sim.exp > $base_dir/fifo1 < $base_dir/fifo0) &

    (exec 30<$base_dir/fifo0 31<$base_dir/fifo1)


    # wait until this closes before looping around again
    wait;   


done
