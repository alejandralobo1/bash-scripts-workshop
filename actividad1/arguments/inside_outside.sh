#!/bin/bash

echo "== Without quotes =="
echo "\$* : $*"
echo "\$@ : $@"

echo ""
echo "== With quotes =="

echo "\$* :"
for arg in "$*"; do
  echo "$arg"
done

echo "\$@ :"
for arg in "$@"; do
  echo "$arg"
done

echo ""
echo "Comment:"
echo "\$* trata todos los argumentos como una sola cadena (cuando se usa entre comillas)."
echo "\$@ permite que cada argumento se trate de forma separada."


