#!/bin/bash

########################################
#
#
#
#
#
########################################
clear


echo "Script para Somar dois valores"

read -p "Entre com o primeiro valor: " VAL1
read -p "Entre com o primeiro valor: " VAL2

SOMA=`expr $VAL1 + $VAL2`

echo "$VAL1 + $VAL2 = $SOMA"
