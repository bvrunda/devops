#!/bin/bash

while true; do
  echo "Simple Calculator"
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Exit"
  
  # Read user's choice
  echo -n "Enter your choice: "
  read choice
  
  # Exit the script if user chooses 5
  if [ "$choice" -eq 5 ]; then
    echo "Exiting Calculator. Goodbye!"
    break
  fi
  
  # Read numbers from the user
  echo -n "Enter the first number: "
  read num1
  echo -n "Enter the second number: "
  read num2
  
  case $choice in
    1)
      result=$((num1 + num2))
      echo "Result: $num1 + $num2 = $result"
      ;;
    2)
      result=$((num1 - num2))
      echo "Result: $num1 - $num2 = $result"
      ;;
    3)
      result=$((num1 * num2))
      echo "Result: $num1 * $num2 = $result"
      ;;
    4)
      if [ "$num2" -ne 0 ]; then
        result=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Result: $num1 / $num2 = $result"
      else
        echo "Division by zero is not allowed."
      fi
      ;;
    *)
      echo "Invalid choice. Please select a valid option."
      ;;
  esac
  echo "-----------------------------------"
done
