#!/bin/bash

##########################################
#
# DESCRICAO DO SCRIPT
#
# Autor: Nome do autor (email_de_contato@email.com)
# Data de criacao: DD/MM/YYYY
#
# Descriao: o que o script faz
#
# Exemplo de uso: ./script.sh parametro1 parametro...
#
# Alteracoes:
#       Dia X - Inclusao da funcao de ordenacao
#       Dia Y - Correcao da funcao de leitura
#
#######################################################

#Logging
NONE='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
log() {
	case "$1" in
	
	error | ERROR)
		echo -en "${RED}"
	;;
	debug | DEBUG)
		echo -en "${BLUE}"
	;;
	info | INFO)
		echo -en "${GREEN}"
	;;
	*)
		echo -en "${RED}[LOGGER_ERROR] INVALID OPTION: $1"
	;;
	esac

	echo -en "$2"
	echo -e "${NONE}"
}
log "error" "teste_erro"
log "debug" "teste_debug"
log "info" "teste_info"
log "" "\n\n"



echo -e "[DEBUG] $# Args...\n\n"

echo -e "[DEBUG] Separating ARGS & OPTS(- or --)\n"
ARGS=()
OPTS=()
COUNTER=0
for VAR in "$@"
do
	echo "ARGUMENT $COUNTER: $VAR"; COUNTER=$(($COUNTER + 1))


	if [[ $VAR =~ -.* ]]; then
    		echo "$VAR is opts"
		OPTS+=("$VAR")
	elif [[ $VAR =~ ^([A-Z]|[a-z]|[0-9])* ]]; then
		echo "$VAR is args"
		ARGS+=("$VAR")
	else
		echo "[ERROR] RegEx didn't match OPTS OR VAR: $VAR"
    		exit 1
	fi
done

echo "[DEBUG] Arguments: ${ARGS[@]}"
echo "[DEBUG] Options ${OPTS[@]}"
