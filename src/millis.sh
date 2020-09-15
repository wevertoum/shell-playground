#!/bin/zsh
# shell script que gera CNPJ
perl -MTime::HiRes -e 'printf("%.0f\n",Time::HiRes::time()*1000)'
