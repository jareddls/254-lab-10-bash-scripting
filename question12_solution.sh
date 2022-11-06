#!/usr/bin/env bash

echo 'Question 1.2 solution file.'

echo "0 Exit"
echo "1 Introduction"
echo "2 Display Files"
echo "3 Credits"

echo  "Choose an option: "
read NUM

case $NUM in

  0)
    echo -e "Exiting program.\n"
    ;;

  1)
    echo -e "This is our group TDM.\n"
    echo -e "We have created a Discord bot that include a couple of features\n"
    echo -e "   - Ability to play music\n"
    echo -e "   - Ability to lookup stats for Valorant\n"
    echo -e "   - Welcomes users to the server\n"
    echo -e "   - Moderation commands that involve dealing with kicking and banning\n"
    echo -e "   - Leveling system\n"
    echo -e "   - 1v1 RPG minigame\n"
    ;;

  2)
    echo -n ~/Documents/GitHub/254-lab-10-bash-scripting/
    ls -l ~/Documents/GitHub/254-lab-10-bash-scripting/
    ;;

  3)
    echo -e "Credits: "
    echo -e "Jared De Los Santos"
    echo -e "Omar Trejo"
    echo -e "Charles Morrison"
    ;;

esac

