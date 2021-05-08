#!/bin/bash
read letter

letter_lower=${letter,,}

 if [ "$letter_lower" = 'y' ]; then
     echo 'YES'
 else
     echo 'NO'
fi


 
