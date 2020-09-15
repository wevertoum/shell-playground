#!/bin/zsh
# shell script que gera CPF
CPF="$(curl -w "\n" -s https://document-generator.ematos.now.sh/cpf)"
CLEAR=$1
if [ "$CLEAR" = "c" ]; then
  echo "$CPF" | sed 's/[^0-9]*//g'
else 
  echo $CPF
fi
echo $CPF | xclip -sel clip