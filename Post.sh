files=$(ls ./gallery-dl/instagram/*/* | sort -r)
date=$(date '+%d-%m-%Y')
$(mkdir ./videos/$date)

#jqout=$(cat $files | jq .username)
for file in $files; do

    filetype=$(file --mime-type -b $file)
    # echo "$filetype"

    if [[ $filetype == application/json ]]; then
        username=$(cat $file | jq -r .username)
        url=$(cat $file | jq -r .post_url)

		# echo $jqout
	fi
	if [[ $filetype == video/mp4 ]]; then
        $(echo "$username - $url - " >> ./videos/$date/Timestamp.txt)

		$(cp $file videos/"$date"/"$username".mp4 )

	fi

    
done

