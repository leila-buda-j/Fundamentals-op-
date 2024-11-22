#!bash/bin
#check for the correct format
read -p "Please give me your birthdate in year.month.day format: " birthday
if [[ !birthday =~ ^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$ ]]; then
     echo "Not even close... Use some numbers... And the right format... Please..."
     exit 1
fi
#validate the format using regex
if ! date -d "${birthday//./-}" &>/dev/null; then   
    echo "This date format is an invalid one. Please enter a valid date."
    exit 1
else 
    echo "date  is ok. going on "
fi

#calculate users age
actual_date=$(date +%s)
#echo current date in seconds  : $actual_date
birthdate_in_seconds=$(date -d "${birthday//./-}" +%s)
#echo birthday in seconds : $birthdate_in_seconds
# check if the birthdate is in the future
if [[ birthdate_in_seconds > actual_date ]]; then
echo "the birthdate cannot be ine the future."
    exit 1
fi
#calculate the age
echo calculate the age 
age=$(( (actual_date - birthdate_in_seconds) /31557600  ))
echo "You are $age years old."

