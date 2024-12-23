#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GET_USERNAME() {
  echo -e "\nEnter your username:"
  read -r USERNAME
  local un_length=${#USERNAME}

  # Validate username length.
  if [[ $un_length -le 0 || $un_length -gt 22 ]]
  then
    echo "Username must be between 1 and 22 characters. Try again."
    GET_USERNAME 
  else
    PROCESS_USER "$USERNAME"
  fi
}

PROCESS_USER() {
  local username=$1

  # Fetch user data.
  local user_data
  user_data=$($PSQL "SELECT user_id, username, frequent_games, MIN(best_guess)
                    FROM users
                    LEFT JOIN games USING(user_id)
                    WHERE username='$username'
                    GROUP BY user_id, username, frequent_games;")

  if [[ -z $user_data ]]
  then 
    # New User.
    echo -e "\nWelcome, $username! It looks like this is your first time here."
    NEW_USER "$username"
  else
    # Existing User.
    local user_id
    user_id=$(echo "$user_data" | cut -d'|' -f1)
    local username
    username=$(echo "$user_data" | cut -d'|' -f2)
    local games_played
    games_played=$(echo "$user_data" | cut -d'|' -f3)
    local best_game
    best_game=$(echo "$user_data" | cut -d'|' -f4)

    echo -e "\nWelcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
    START_GAME "$user_id"
  fi
}

NEW_USER() {
  local username=$1
  $PSQL "INSERT INTO users(username, frequent_games) VALUES('$username', 0);" >/dev/null 2>&1
  local user_id
  user_id=$(echo $($PSQL "SELECT user_id FROM users WHERE username='$username';") | sed 's/ //g')
  
  if [[ $user_id ]]
  then
    START_GAME "$user_id"
  else
    echo "ERROR creating user. Please try again."
    exit 1
  fi
}

START_GAME() {
  local user_id=$1
  local target_number=$(( RANDOM % 1000 + 1 ))
  local guess_count=0

  PLAY_GAME "$user_id" "$target_number" "$guess_count"
}

PLAY_GAME() {
  local user_id=$1
  local target_number=$2
  local guess_count=$3

  echo -e "\nGuess the secret number between 1 and 1000:"
  while true
  do
    read -r user_guess

    # Prevent non-integers.
    if [[ ! $user_guess =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      continue
    fi

    # Increment Count.
    guess_count=$(( guess_count + 1 ))

    #Check user's guess.
    if [[ $user_guess -lt $target_number ]]
    then
      echo "It's higher than that, guess again:"
    elif [[ $user_guess -gt $target_number ]]
    then
      echo "It's lower than that, guess again:"
    else
      # Correct Guess.
      RECORD_GAME "$user_id" "$guess_count"
      echo "You guessed it in $guess_count tries. The secret number was $target_number. Nice job!"
      break
    fi
  done
}

RECORD_GAME() {
  local user_id=$1
  local guess_count=$2

  # Update games played and record the game.
  $PSQL "UPDATE users SET frequent_games = frequent_games + 1 WHERE user_id = $user_id;" >/dev/null 2>&1
  $PSQL "INSERT INTO games(user_id, best_guess) VALUES($user_id, $guess_count);" >/dev/null 2>&1
}

GET_USERNAME