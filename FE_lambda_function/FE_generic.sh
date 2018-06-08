#!/bin/bash

# generalizzazione dello script eseguibile

xi=x_inf
xs=x_sup
deltax=delta_x
lambda=lambda_i

y_fe=(bc_y)
x_i=($xi)

for((i=0; i<L ; i++))
do
	 j=$i+1
	 x_i[$j]=$(echo "scale=8; (${x_i[$i]}+$deltax)"  | bc)
	 y_fe[$j]=$(echo "scale=8; ((1-$deltax*$lambda)*${y_fe[$i]})" | bc)

	 echo "${x_i[$j]} ${y_fe[$j]}" >> risultatiF.txt
		 #sleep 1
done

echo "fine"
