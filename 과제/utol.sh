#!/bin/bash

echo "working directory: "
read input

if [ -n "$input" ] #input!=NULL (입력값이 들어온 경우)
then
	if [ -d "$input" ] #input의 파일이 존재하고, 디렉토리일때
		then
		if [ -x "$input" ] #디렉토리의 탐색 권한을 갖고 있을때
			then
			cd $input
			for i in *
			do
				filename=`echo $i | tr '[:lower:][:upper:]' '[:upper:][:lower:]'` #file명의 대소문자 변경
				mv $i $filename

			done
			
		fi
	else
		echo "Wrong Directory" #디렉토리가 존재하지 않는 경우-에러 메시지 출력
	fi

else #enter값이 들어왔을때-해당 디렉토리에서  출력
		input=pwd	
		for i in *
			do
				filename=`echo $i | tr '[:lower:][:upper:]' '[:upper:][:lower:]'` #file명의 대소문자 변경
				mv $i $filename
			done
fi

