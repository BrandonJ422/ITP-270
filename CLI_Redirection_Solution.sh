#!/bin/bash

#Create Rivers.txt
touch Rivers.txt

#Add five river names to it
echo -e  "Amazon River\n" > Rivers.txt
echo -e  "Nile River\n" >> Rivers.txt
echo -e  "Yangtze River\n" >> Rivers.txt
echo -e  "Danube River\n" >> Rivers.txt
echo -e  "Potomac River\n" >> Rivers.txt
#cat Rivers.txt

#Replace the word "Amazon" with "ohio"
sed 's/Amazon/Ohio/g' Rivers.txt > new_Rivers.txt


#Sort the river names alphabetically
sort new_Rivers.txt > new_Rivers_v2.txt 


#Use command to filter out duplicates
uniq new_Rivers_v2.txt > new_Rivers_v3.txt


#Use redirection to create three copies of (one liner)
diff Rivers.txt new_Rivers_v3.txt


#Compare the original file and the modified copy


#One-liner
touch rivers.txt && echo -e "Amazon River\nNile River\nYangtze River\nPotomac River\nDanube River\nPotomac River" > rivers.txt && sort rivers.txt | uniq > rivers2.txt | sed 's\Amazon\Ohio\g' rivers2.txt > rivers3.txt  && diff rivers.txt rivers3.txt
