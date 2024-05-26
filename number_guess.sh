#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:\n"
read USERNAME

generate_random_number() {
    local random_number=$(( ( RANDOM % 1000 ) + 1 ))
    echo $random_number
}

PLAY_GAME() {
    # Generate a random number and store it in a variable
    RANDOM_NUMBER=$(generate_random_number)
    echo -e "Guess the secret number between 1 and 1000:\n"
    read NUMBER_GUESSED
    local NUMBER_OF_TRIALS=0

    # Check if the input is a number
    if [[ $NUMBER_GUESSED =~ ^[0-9]+$ ]]; then
        # Choose a number until it is guessed
        while true; do
            ((NUMBER_OF_TRIALS++))
            if [[ $NUMBER_GUESSED -lt $RANDOM_NUMBER ]]; then
                echo -e "It's higher than that, guess again:\n"
            elif [[ $NUMBER_GUESSED -gt $RANDOM_NUMBER ]]; then
                echo -e "It's lower than that, guess again:\n"
            else
                echo -e "You guessed it in $NUMBER_OF_TRIALS tries. The secret number was $RANDOM_NUMBER. Nice job!\n"
                INSERT_GAME_RECORD=$($PSQL "INSERT INTO number_guess(username, trial_number) VALUES('$USERNAME', $NUMBER_OF_TRIALS)")
                break
            fi
            read NUMBER_GUESSED
        done
    else
        echo -e "That is not an integer, guess again:"
        read NUMBER_GUESSED
    fi
}

# Check if username exists
AVAILABLE_USER=$($PSQL "SELECT username FROM number_guess WHERE username='$USERNAME'")

if [[ -z $AVAILABLE_USER ]]; then
    echo -e "Welcome, $USERNAME! It looks like this is your first time here.\n"
    PLAY_GAME
else
    NUMBER_OF_GAMES=$($PSQL "SELECT COUNT(*) FROM number_guess WHERE username='$USERNAME'")
    NUMBER_OF_TRIALS=$($PSQL "SELECT MIN(trial_number) FROM number_guess WHERE username='$USERNAME'")
    echo -e "Welcome back, $USERNAME! You have played $NUMBER_OF_GAMES games, and your best game took $NUMBER_OF_TRIALS guesses.\n"
    PLAY_GAME
fi