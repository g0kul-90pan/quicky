#! /bin/bash

select car in BMW MERCEDES TELSA ROVER TOYOTA
do
    case $car in
        BMW)
            echo "You have chosen BMW! " ;;
        MERCEDES)
            echo "You have chosen MERCEDES! " ;;
        TELSA)
            echo "You have chosen TELSA! " ;;
        ROVER)
            echo "You have chosen ROVER! " ;;
        TOYOTA)
            echo "You have chosen TOYOTA! " ;;
        *)
            echo "You have chosen a wrong option " ;;
    esac

done
