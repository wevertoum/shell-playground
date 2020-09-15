#!/bin/zsh
CNPJ="$(curl -w "\n" -s https://document-generator.ematos.now.sh/cnpj)"
CLEAR=$1
if [ "$CLEAR" = "c" ]; then
  echo "$CNPJ" | sed 's/[^0-9]*//g'
else 
  echo $CNPJ
fi
echo $CNPJ | xclip -sel clip
