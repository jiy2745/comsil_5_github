if [ $# -eq 0 ]
then
        echo "Usage: phone searchfor [... searchfor]"
        echo "(You didn't tell me what you want to search for.)"
        exit 1
fi


egrep_text=""
is_first=1

for arg in "$@"
do
        if [ $is_first -eq 1 ]
        then
                egrep_text="(${arg}"
                is_first=0
        else
                egrep_text="${egrep_text}|${arg}"
        fi
done

egrep_text="${egrep_text})"


egrep -i "$egrep_text" mydata.txt | awk -f display.awk