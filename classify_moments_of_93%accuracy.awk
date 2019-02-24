#! /usr/bin/awk -f

BEGIN{
  wow_words=("seen,birthday,morning,learn,wow,weather,interesting,cycle,walk,exploring,geyser,book,properly,coding,caffet area,home town,pool table,demo,heaven,outbound,amazing,awesome,family,malli sir,cluedo,mafia,cycling,vim,cake,ice creme,easy,discovering,enjoying,happy,game,north india,finally,food,fun,programming,good,interacting,love,hot water,welcome,cricket,crcicket,crciket,support,senior,celeberation,washing machine,north indian food,fish,jayant,swamiji,pedl,journey,better,party,bigger,improved,better,biger,improved,gym,session,meet,kidney,laptop,bangalore,winning,code,understand,new,terminal")
  ouch_words=("after,leave,bad,unable,bharat band,cool weather,boring,bore,can't,not,no.elevator,fear,mota wala,low,sleepy,laging,lack,missing,typing,pay,walk,next buliding,vibrant,difficult,less time,change,Rs")
  split(wow_words,wow_moments,",")
  split(ouch_words,ouch_moments,",")
}

{
   line=tolower($0)
   for(i=1; i<length(wow_moments); i++){
    if(line ~ wow_moments[i]){
      print "W|"$0
      next
    }
   }
   for(j=1; j<length(ouch_moments); j++){
      if(line == ouch_moments[j]){
        print "O|"$0
      }
    }
   print "O|"$0
}
