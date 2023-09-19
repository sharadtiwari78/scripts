echo "provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice
case $choice in
        a)
            echo "today's date is:" 
            date;;
        b)ls;;
        c)pwd;;
        *) echo "Invalid input, please provide valid input"
esac
