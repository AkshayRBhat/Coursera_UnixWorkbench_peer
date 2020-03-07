$cat guessinggame.sh
#!/bin/bash
function fileguess(){
    ls *.* >count.sh                %Move all files starting with any letter with any extension to file count.sh
    ans_right=$( wc -l count.sh)    %Count the number of true files
    while true;
    do
        echo "Hi User!Guess the number of files present in the current working directory"
        read  number_guessed
        if [ $number_guessed -lt $ans_right ]
        then
            echo "Try Again!.....Your guess is less than the true number"
        continue;A
        elif [ $number_guessed -gt $ans_right ]
        then
            echo "Try Again!....Your guess is greater than the true number"
        continue;
        else
            echo " Congratulations User!........Your guess is right!"
        break;
        fi
    done
}
echo "Thank You for playing the game!......Bye"
