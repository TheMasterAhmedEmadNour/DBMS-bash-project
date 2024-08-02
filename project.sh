#!bin/bash
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
