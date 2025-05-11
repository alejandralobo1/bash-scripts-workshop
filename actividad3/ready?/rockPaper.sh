#!/bin/bash

# Rock Paper Scissors game using while loop

echo "Welcome to Rock, Paper, Scissors!"

while true
do
    echo "Choose: rock, paper or scissors (or type exit):"
    read player

    if [[ "$player" == "exit" ]]; then
        echo "Bye!"
        break
    fi

    machine_choice=$((RANDOM % 3))

    if [[ $machine_choice -eq 0 ]]; then
        machine="rock"
    elif [[ $machine_choice -eq 1 ]]; then
        machine="paper"
    else
        machine="scissors"
    fi

    echo "Machine chose: $machine"

    if [[ "$player" == "$machine" ]]; then
        echo "Draw!"
    elif [[ "$player" == "rock" && "$machine" == "scissors" ]] ||
         [[ "$player" == "paper" && "$machine" == "rock" ]] ||
         [[ "$player" == "scissors" && "$machine" == "paper" ]]; then
        echo "You win!"
    else
        echo "You lose!"
    fi
done
