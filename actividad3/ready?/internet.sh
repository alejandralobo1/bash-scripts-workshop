Nirvana Alejandra Coimbra Lobo <e.ncoimbral@ies-sabadell.cat>
	
17:42 (fa 8 minuts)
	
per a mi
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




#!/bin/bash

# Password validation using while loop and regex

while true
do
    echo "Enter a password:"
    read -s password

    if [[ ${#password} -lt 8 ]]; then
        echo "Password must have at least 8 characters."
    elif [[ ! "$password" =~ [A-Z] ]]; then
        echo "Password must contain at least one uppercase letter."
    elif [[ ! "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one digit."
    else
        echo "Password is valid."
        break
    fi
done







#!/bin/bash

# Interactive menu with case structure

while true
do
    echo "----- MENU -----"
    echo "1) Show current date and time"
    echo "2) Check if a file exists"
    echo "3) Exit"
    echo "Choose an option:"
    read option

    case $option in
        1)
            date
            ;;
        2)
            echo "Enter the file name:"
            read filename
            if [[ -e "$filename" ]]; then
                echo "The file exists."
            else
                echo "The file does not exist."
            fi
            ;;
        3)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please enter 1, 2 or 3."
            ;;
    esac
done




#!/bin/bash

# Check internet connection using until loop and curl

school="https://agora.xtec.cat/ies-sabadell/"

until curl -s --head "$school" | grep "200 OK" > /dev/null
do
    echo "No connection to $school. Retrying in 5 seconds..."
    sleep 5
done

echo "Connection established. Opening browser..."
xdg-open "$school" &>/dev/null

