#!/bin/bash

# Define functions directly in the script
func_factorial() {
    local num=$1
    local fact=1
    for (( i=1; i<=num; i++ )); do
        fact=$(( fact * i ))
    done
    echo "Factorial of $num is $fact"
}

func_decending() {
    local num=$1
    echo "Descending order:"
    while [ $num -gt 0 ]; do
        echo -n "$num "
        num=$(( num - 1 ))
    done
    echo
}

func_asending() {
    local num=$1
    echo "Ascending order:"
    for (( i=1; i<=num; i++ )); do
        echo -n "$i "
    done
    echo
}

func_biggest3() {
    local num1=$1
    local num2=$2
    local num3=$3
    biggest=$num1
    if [ $num2 -gt $biggest ]; then
        biggest=$num2
    fi
    if [ $num3 -gt $biggest ]; then
        biggest=$num3
    fi
    echo "The largest number is: $biggest"
}

# Menu and function call logic
while true; do
    echo "Menu:"
    echo "1. Factorial of a number"
    echo "2. Descending order of a number"
    echo "3. Ascending order of a number"
    echo "4. Biggest of 3 numbers"
    echo "5. Exit"
    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            read -p "Enter a number to find factorial: " number
            func_factorial "$number"
            ;;
        2)
            read -p "Enter a number for descending order: " number
            func_decending "$number"
            ;;
        3)
            read -p "Enter a number for ascending order: " number
            func_asending "$number"
            ;;
        4)
            read -p "Enter three numbers separated by space: " num1 num2 num3
            func_biggest3 "$num1" "$num2" "$num3"
            ;;
        5)
            echo "Exiting."
            break
            ;;
        *)
            echo "Invalid choice! Please select between 1-5."
            ;;
    esac
    echo  # Print a blank line for readability
done

