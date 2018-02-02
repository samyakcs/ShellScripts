#!/bin/bash
PS3='Choose one word: ' 
select word in "linux" "bash" "scripting" "tutorial" "quit"
do
  echo "The word you have selected is: $word"
  if [ $word  == "quit" ]
  then
      echo "Break it...otherwise endless loopi!"
      break  
  fi
done
exit 0 
