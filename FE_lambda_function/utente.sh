#!/bin/bash

#echo "Funzione da approssimare:"
#read formula
echo "Questo script risolve Eulero esplicito per Y'(x)= -lambda*Y(x)"
echo "Range della variabile indipendente:"
echo "Digitare il valore della X inferiore"
read xinf

echo "Digitare il valore della X superiore"
read xsup

echo "Intervallo di discrezzazione delle X"
read delta

echo "Condizione iniziale sulle Y per x=x_iniziale"
read bc_y

echo "Valore assoluto del coefficiente lambda:"
read lambda

lunghezza=$(echo "scale=8; (($xsup-$xinf)/$delta)" | bc | cut -d'.' -f1 )


sed FE_generic.sh -e "{
s/x_inf/$xinf/
s/x_sup/$xsup/
s/delta_x/$delta/
s/L/$lunghezza/
s/lambda_i/$lambda/
s/bc_y/$bc_y/
}" > FE.sh

sed xy.gnuplot -e "{
s/lambda/$lambda/
}" > final.gnuplot


