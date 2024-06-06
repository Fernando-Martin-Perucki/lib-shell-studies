#! /usr/bin/bash

# #############################
# This snippet shows an example of multiple choice for user input using [select]
# The user must select the input number, not the content itself.
# For example:
#    Do you want to continue?
#    1) y
#    2) n
#    Select number: 3
#    Invalid option. Please enter any of the numbers specified.
#    Do you want to continue?
#    1) y
#    2) n
#    Select number: 1
#    You chose 1) y.
# #############################

# Set all the options
opt1="y"
opt2="n"
options=($opt1 $opt2)

# Set the Prompt String 3 "PS3" used by the prompt of [select]
PS3="Select number:"

# Display a question to the user
echo "Do you want to continue?"

# Start an infinite loop to keep prompting the user until a valid option is chosen
while true; do
    # Create a select menu from the options array
    # <in "${options[@]}"> specifies that the select command should iterate over the elements of the options array.
    select opt in "${options[@]}"; do
        # Use a case statement to handle each choice
        case $opt in
            $opt1)
                # Use special variable $REPLY which holds the value of the user's input before it is mapped to an option from the select list.
                echo "You chose $REPLY) $opt1."
                exit 0
                ;;
            $opt2)
                # Use special variable $REPLY which holds the value of the user's input before it is mapped to an option from the select list.
                echo "You chose $REPLY) $opt2."
                exit 0
                ;;
            *)
                echo "Invalid option. Please enter any of the numbers specified."
                break
                ;;
        esac
    done
done
