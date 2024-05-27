#! /usr/bin/bash

# -------------------
# Declaring variables
# -------------------
# Do not leave a space before or after =
# Use only letters, numbers, and underscores for variable names
# A variable name must start with an alphabet or underscore

# Scalar variables (can hold only one value at a time)
var1=Hello
var2=Tatemachi
echo $var1 $var2

# Unsetting a variable (command that directs a shell to delete a variable and its stored data)
unset var1
echo $var1 $var2

# Set the variable to be read only
readonly var2

# Variable Types (WIP)
# 01) Local Variable
# 02) Environment Variable
# 03) Shell Variables
