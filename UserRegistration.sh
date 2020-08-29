#!/bin/bash

echo "User Registration"

#UseCase 1=> Check First Name is valid or not
shopt -s extglob

pat="^[[:upper:]]{1}[[:lower:]]{2,8}$";

#user input
read -p "Enter First Name:" fname

if [[ $fname =~ $pat ]]
then
        echo "First Name is valid"
else
        echo "First Name is not valid"
fi

#UseCase 2=> Check Last Name is valid or not

pat="^[[:upper:]]{1}[[:lower:]]{2,8}$";

#user input
read -p "Enter Last Name:" lname

if [[ $lname =~ $pat ]]
then
        echo "Last Name is valid"
else
        echo "Last Name is not valid"
fi


# UseCase 3 => Email Validation

read -p "Enter email address to validate:" email
pattern="^[a-zA-Z]{5}[a-zA-Z0-9\.\!\_]*\@[a-z]*\.(co|in|com)$"

if [[ $email =~ $pattern ]]
then
	echo "Email is valid";
else
	echo "Email is not valid";
fi

# UseCase 4 => check Mobile number

read -p "enter mobile number:" number
pattern='^((\+){1}91){1}[7-9]{1}[0-9]{9}$'
if [[ $number =~ $pattern ]]
then
	echo "Mobile number is valid";
else
	echo "Mobile number is not valid";
fi

# UseCase 5 => Password Rule1

read -p "Enter password minimum 8 characters:" password
pat="^[a-zA-Z]{8}"

if [[ $password =~ $pat ]]
then
	echo "Password is valid";
else
	echo "Password is invalid";
fi

# UseCase 6 => Password Rule2
	
read -p "Enter password in Case:" password
pat="^[[:upper:]]{1}[[:lower:]]{7}"

if [[ $password =~ $pat ]]
then
	echo "Password is valid";
else
	echo "Password in invalid";
fi

# UseCase 7 => Password Rule3

read -p "Enter password with at least 1 numeric value:" password
pat="^[A-Z][a-z]{6}[a-z]+[0-9]{1}"

if [[ $password =~ $pat ]]
then
	echo "Password is valid";
else
	echo "Password is invalid";
fi
