#!/bin/sh
set -e

# Question.sh の読み込み
. Question.sh

FILENAME=core
QUESTION="Remove $FILENAME"
DEFAULT="no"
HELPMSG="The file $FILENAME is going to be removed. Is that OK?"

Question "$QUESTION" "$DEFAULT" "$HELPMSG"

if [ $ANSWER = "yes" ]; then
	echo "removed."
else
	echo "canceled."
fi

