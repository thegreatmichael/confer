#!/bin/sh
abspath=$(cd "$(dirname "$0")"; pwd)
rm -rf $abspath/bin
mkdir $abspath/bin
CLASSPATH=$CLASSPATH:$abspath/lib/*:$abspath/bin
javac -classpath $CLASSPATH -d $abspath/bin $abspath/src/edu/mit/csail/confer/Indexer.java
export CLASSPATH
java -classpath $CLASSPATH edu.mit.csail.confer.Indexer $abspath/../../data/sigmod2013/papers.json $abspath/../../index $abspath/../../data/sigmod2013/similar_papers.json