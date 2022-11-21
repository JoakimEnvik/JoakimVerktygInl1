#!/bin/bash

NAME="Joakim_Envik_Karlsson"

PATH_SCR=*.java
PATH_DST=~/GuessingGame/Joakim_Envik_Karlsson_labb

echo $NAME"s program"

mkdir -p $PATH_DST

for FILE in $PATH_SCR
do
    cp -r $FILE $PATH_DST
done

cd $PATH_DST

echo -n "Running game from "
pwd
echo "compiling..."

javac GuessingGame.java

echo "running game..."

java GuessingGame

echo "Done!"
echo "removing class files..."

rm -r *.class

ls