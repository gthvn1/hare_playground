#!/bin/bash

clear
echo "Monitoring changes..."
echo -n "Hint: By default it runs tests. "
echo "Pass 'b' to build or 'r' to run the code"

case $1 in
  b) CMD="hare build -o chip8emu src" ;;
  r) CMD="hare run src" ;;
  *) CMD="hare test src"  ;;
esac

inotifywait -q -m -e modify src | while read -r _DIRECTORY EVENT _FILE; do
  echo $DIRECTORY $EVENT $FILE
  case $EVENT in
    MODIFY*)
      clear
      echo "= ${CMD} ==============================="; echo
      ${CMD}
      echo; echo "= $(date) ==================="
      ;;
  esac
done
