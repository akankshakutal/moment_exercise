#! /usr/bin/awk -f

BEGIN{
  count=0
  flag=1
  
  while(flag==1){
    flag =getline < "moments"
    array[count]=$0
    count++
    }
  for(i=0; i<length(array)-1; i++){
   line=tolower(array[i])
   if(line ~ "bad"||line ~ "bye" ||line ~"small" || line ~"hard" || line ~"unable"|| line ~"bharat"|| line ~ "boring"||line ~ "bore"|| line ~ "can't"|| line ~"not"||   line ~"elevator"|| line ~ "fear"|| line ~"sleep"|| line ~"laging"|| line~"lack"|| line ~"missing"|| line ~"no"|| line ~"typing"|| line ~ "pay" || line ~ "walk" || line ~ "next bulding" ||    line ~ "vibrant" || line ~ " typing speed" || line ~ "difficult" || line ~ "change") {
      print "O|"array[i]
    }else if (line ~"family"|| line ~"game" || line ~ "programming"|| line ~"welcome" || line ~"cricket"|| line ~"crcicket"|| line ~"crciket"|| line ~ "support"|| line ~"celebration"|| line ~"celeberation"|| line ~ "senior"|| line ~ "washing machine"|| line ~"ate"|| line ~"north indian food" || line~"jayant"|| line ~"swamiji"|| line ~"ganesh"|| line ~"pedl"|| line ~ "able"|| line ~ "amazing"|| line ~"journey"|| line ~ "awesome" || line ~ "better"|| line ~ "party" || line ~ "biger"|| line ~ "improved" || line ~ "gym" || line ~ "session" || line ~ "confidance" || line ~ "meet" || line ~ "kidney"|| line ~ "weather" || line ~"bangalore" || line ~ "winning" || line ~ "code"  || line ~ "understand" ||line ~ "new" || line ~ "terminal")    {
      print "W|"array[i]
    }else{
    print "O|"array[i]
    }
  }
}
