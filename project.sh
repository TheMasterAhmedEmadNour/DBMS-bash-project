#!bin/bash
#----------------------- Start Utils Fuctions---------------------------------------

function validateParamName {
    
    if [ -z "$1" ]
    then
        echo "The name field cannot be left empty"
        return 1
    elif [[ "$1" =~ ^[0-9] ]]
    then
        echo "Name should not begin with a number"
        return 1
    elif [[ "$1" = *" "* ]]
    then
        echo "Name Shouldn't Have Spaces"
        return 1
    elif [[ "$1" =~ [^a-zA-Z0-9_] ]]
    then
        echo "Name Shouldn't Have Special Characters"
        return 1
    fi
    
}
PS3="Select Option: "

select choice in "Create Database" "List Databases" "Connect Database" "Drop Database" "Exit"
do
    case $choice in
        "Create Database") createDb
        ;;
        "List Databases") listDbs
        ;;
        "Connect Database") connectDb
        ;;
        "Drop Database") DropDb
        ;;
        "Exit") exit
        ;;
        *) echo "$choice is not valid"
        ;;
    esac
done
