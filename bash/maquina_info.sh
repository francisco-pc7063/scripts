#!/bin/bash

##########################################
#
# DESCRICAO DO SCRIPT
#
# Autor: Francisco Pena Cunha(franciscp.pc7063@gmail.com)
# Data de criacao: 01/08/2020
#
# Descriao: Traz Informacoes relevantes sobre a maquina em questao
#
# Exemplo de uso: ./script.sh
#
# Alteracoes:
#
#######################################################
clear

echo "#############################################"
echo "Executing script for Machine: `hostname`"
echo -n "System Date: " && date

OS=`cat /etc/os-release | egrep "^NAME=" | cut -c6- | sed 's/"//g'`
OS_VERS=`cat /etc/os-release | egrep "^VERSION=" | cut -c9- | sed 's/"//g'`
echo -e "OS INFO: $OS $OS_VERS"
echo "Kernel version: `uname -a | awk '{printf $3}'`"
echo

echo "Machine Working since: `uptime | awk '{printf $1}'`"
echo "Total Uptime: `uptime | awk '{printf $3}' | sed 's/,//g'`"
echo "Pseudo Terminal Slave (PTS) count: `ps aux | egrep -w "pts/[0-9]*" | awk '{printf $7 "\n"}' | sort | uniq | wc -l`"
#Another command to find other PTS: `find /dev/pts/* | grep -v "ptmx" | wc -l`
echo "TeleTYpewriter (TTY) count: `ps aux | grep tty | awk '{print $7}' | grep -v pts | sort | uniq | wc -l`"
echo -e "#############################################\n\n"


echo "#############################################"

echo -n "CPU Model: "
cat /proc/cpuinfo | grep "model name" | head -n1 | cut -d: -f2 | cut -d" " -f2-
#cat /proc/cpuinfo | grep "model name" | head -n 1 | sed 's/\t//g' | sed 's/model name: //g'
echo -n "Virtual Cores: "
cat /proc/cpuinfo | grep processor | wc -l
echo

#Load Average
echo "System LoadAverage:"
echo "1': `uptime | awk '{printf $8}' | sed 's/\(.*\),/\1 /g'`"
echo "5': `uptime | awk '{printf $9}' | sed 's/\(.*\),/\1 /g'`"
echo "15': `uptime | awk '{printf $10}'`"
echo

#CPU DATA
echo "Cpu Usage Info - Virtual CPU's"
top -n1 | grep Cpu
top 1 -n1 | grep Cpu

echo
RAM_FREE=`free | grep "Mem" | awk '{print $4}' | cut -c-5`
RAM_TOTAL=`free | grep "Mem" | awk '{print $2}' | cut -c-5`MB
echo "Memory: $RAM_FREE/$RAM_TOTAL"
SWAP_FREE=`free | grep "Swap" | awk '{print $4}' | cut -c-5`MB
SWAP_TOTAL=`free | grep "Swap" | awk '{print $2}' | cut -c-5`MB
echo "Swap: $SWAP_FREE/$SWAP_TOTAL"

echo
echo "Disk Usage Info:"
df -h | head -n 1 ; df -h | grep -v snap | grep -w "/"

echo
echo "Disk Usage Info:"
df -ih | head -n 1 ; df -h | grep -v snap | grep -w "/"

echo
echo -e "#############################################\n\n"


echo "#############################################"
echo

PASSWD=`cat /etc/passwd`
USER_ID=`echo "$PASSWD" | awk -F":" '{print $1 "\t" $3}'`
echo -n "Users on SO: "
echo "$USER_ID" | wc -l


echo "Users Logged: `uptime | awk '{printf $4 " " $5}' | sed 's/,//g'`"

echo
echo "Current PTS':"
CURR_PTS="PID USER TTY START_TIME"
CURR_PTS="$CURR_PTS\n`ps aux --sort=-tty | grep -v grep | grep pts | grep bash | grep -v "\.sh" | awk '{print $2 "\t" $1 "\t" $7 "\t" $9}' | sort -k 3 `"
echo -e "$CURR_PTS" | column -t

echo
echo -e "#############################################\n\n"


echo "#############################################"
echo "(UNSTABLE) Machine IP Addresses:"
IP_ADDR=`hostname --all-ip-addresses | sed 's/ /\n/g'`
echo -n "Local Network IP: "
echo "$IP_ADDR" | grep -w "192\.168.0\.[0-9]*"
echo "Docker IP: `echo "$IP_ADDR" | grep -w "172\.17\.0\.[0-9]*" ` "
echo "Kvm IP: `echo "$IP_ADDR" | egrep -w "192\.168\.122\.[0-9]*" ` "
echo

echo "IPV4: "
echo "$IP_ADDR" | grep "\."
echo

echo "IPV6: "
hostname --all-ip-addresses | sed 's/ /\n/g' | grep ":"
echo "#############################################"

