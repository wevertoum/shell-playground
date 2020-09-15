#!/bin/bash
# shell script que traz dados de um CEP
CEP=""
CLIPBORAD=0

for i in $@; do
  PARAM=`echo "$i" | tr '[:upper:]' '[:lower:]'`
  if [[ "$PARAM" == "--clipboard" ]]; then
    CLIPBORAD=1
  elif [[ "$PARAM" == "-c" ]]; then
    CLIPBORAD=1
  else
    CEP=$PARAM
  fi
done

if [ -z $CEP ]; then
  echo "[!] Parâmetro inválido"
else
  RESPONSE="$(curl -s "https://viacep.com.br/ws/$CEP/json/")"

  if [ $CLIPBORAD -eq 1 ]; then
    echo $RESPONSE | xclip -sel clip
  fi

  echo $RESPONSE
fi