#!/bin/bash

##########################################
#
# DESCRICAO DO SCRIPT
#
# Autor: Francisco Pena Cunha(franciscp.pc7063@gmail.com)
# Data de criacao: 01/08/2020
#
# Descriao: Traz Informacoes sobre algum usuario
#
# Exemplo de uso: ./user-info.sh my-user
#
# Alteracoes:
#
#######################################################
clear

USER=$1


US_PASSWD=`cat /etc/passwd | grep "$USER"`
#finger - da algumas informacoes extras e algumas que ja estao presentes no /etc/passwd
US_LASTLOG=`lastlog -u $USER | tail -n 1`
US_HOME=`echo "$US_PASSWD" | cut -d: -f6`


#echo "$US_PASSWD"
#echo "$US_LASTLOG"
#echo "$US_HOME"


echo "User: $USER"
echo
echo "User Owner: `echo "$US_PASSWD" | cut -d : -f5| tr -d ,`"
#echo "UID: `id -u $USER`"
echo "UID: $UID"
echo "User Home Path: $US_HOME"
echo "User Home Disk Usagem: `du -sh $US_HOME | awk '{print $1}'`"
echo "Last Login Date: `echo $US_LASTLOG | awk '{print $9 " " $5 " " $4 " " $6 " " $7 " " $8}'`"
echo "Last Login IP: `echo "$US_LASTLOG" | awk '{print $3}'`"
echo "User Shell: `echo "$US_PASSWD" | cut -d: -f7`"
echo "Last Login TTY: `echo "$US_LASTLOG" | awk '{print $2}'`"
