#!bash/bin
read -p "Please give me your birthyear: " YYYY
read -p "Please give me your birthmonth:" MM
read -p "Please give me your birthday: " DD
if [reg_ex='^[0-9]+$']; then
    echo "Not even close... Use some numbers... Please..."
fi
if [[$YYYY -gt 2024]]; then
    echo "Don't lie! It's still 2024. Generation beta doesn't exists (yet)!"
fi
if [[$YYYY -lt 1908]]; then
    echo "Don't lie! The oldest person currently is Tomiko Itooka! You can't be older then her!"
fi
