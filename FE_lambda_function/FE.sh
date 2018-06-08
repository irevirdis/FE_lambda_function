#!/bin/bash

# generalizzazione dello script eseguibile

xi=0
xs=2
deltax=0.1
lambda=4

y_fe=(1)
x_i=($xi)

for((i=0; i<20 ; i++))
do
	 j=$i+1
	 x_i[$j]=$(echo "scale=8; (${x_i[$i]}+$deltax)"  | bc)
	 y_fe[$j]=$(echo "scale=8; ((1-$deltax*$lambda)*${y_fe[$i]})" | bc)

	 echo "${x_i[$j]} ${y_fe[$j]}" >> risultatiF.txt
		 #sleep 1
done

echo "fine"
