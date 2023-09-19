myvar="Hello World"

myvarlength="${#myvar}"

echo "length of the myvar is:-  $myvarlength"

echo "Upper case is -- ${myvar^^}"
echo "Upper case is -- ${myvar,,}"

#Replace a string
newvar=${myvar/World/guys}

echo "replace world value from myvar --- ${newvar}"

#slice a string

echo "slice the Hello world -- ${myvar:6:5}"