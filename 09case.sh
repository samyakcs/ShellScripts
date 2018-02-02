#!/bin/sh
FRUIT=$1
case "$FRUIT" in
   "apple" |"APPLE" | "Apple" | "aPPLE") 
        echo "$* pie is quite tasty." 
        ;;
    "banana") 
        echo "I like banana nut bread." 
        ;;
     "kiwi") 
        echo "New Zealand is famous for kiwi." 
        ;;
     *) 
        echo "Awful fruit [$*] you're fan of, huh!"
esac
