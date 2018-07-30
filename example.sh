for file in ./*.php
do
	var=$(php -l "$file"  | grep "No syntax")
	echo $var
	if [ -z "$var" ]; then
  		echo "Test do not pass"
  		exit 1
	else
  		echo "Tests passes"
	fi
  #php -l "$file"
done