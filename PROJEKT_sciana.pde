class Sciana
{
  char rodzajsciany;
  Kordy kordycom[]=new Kordy[9];
  int pomarancze[]=new int[9];
  void przypisywanie()
  {
    if(rodzajsciany=='f')
    {
      kordycom[0]=new Kordy(-20,20,20);
      kordycom[1]=new Kordy(0,20,20);
      kordycom[2]=new Kordy(20,20,20);
      kordycom[3]=new Kordy(-20,0,20);
      kordycom[4]=new Kordy(0,0,20);
      kordycom[5]=new Kordy(20,0,20);
      kordycom[6]=new Kordy(-20,-20,20);
      kordycom[7]=new Kordy(0,-20,20);
      kordycom[8]=new Kordy(20,-20,20);
    }  
    if(rodzajsciany=='l')
    {
      kordycom[0]=new Kordy(-20,-20,-20);
      kordycom[1]=new Kordy(-20  ,-20 , 0);
      kordycom[2]=new Kordy(-20  ,-20 , 20);
      kordycom[3]=new Kordy(-20  ,0 , -20);
      kordycom[4]=new Kordy(-20  ,0 , 0);
      kordycom[5]=new Kordy(-20  ,0 , 20);
      kordycom[6]=new Kordy(-20  ,20  ,-20);
      kordycom[7]=new Kordy(-20,20,0);
      kordycom[8]=new Kordy(-20,20,20);
    } 
   for(int i=0;i<26;i++)
   {

    if(kosteczka[i].kordy.compare(kordycom[0]))
    {
      pomarancze[0]=i; 
    }
    if(kosteczka[i].kordy.compare(kordycom[1]))
    {
      pomarancze[1]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[2]))
    {
      pomarancze[2]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[3]))
    {
      pomarancze[3]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[4]))
    {
      pomarancze[4]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[5]))
    {
      pomarancze[5]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[6]))
    {
      pomarancze[6]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[7]))
    {
      pomarancze[7]=i;
    }
    if(kosteczka[i].kordy.compare(kordycom[8]))
    {
      pomarancze[8]=i;
    }
   }
    
    }  
  void obracanie()
  {
 
 if(rodzajsciany=='f')
 {
for(int i=0;i<9;i++)
{

 kosteczka[pomarancze[i]].rotacjaZ= kosteczka[pomarancze[i]].rotacjaZ+90;
  
}

kosteczka[pomarancze[0]].kordy=kordycom[2];
kosteczka[pomarancze[1]].kordy=kordycom[5];
kosteczka[pomarancze[2]].kordy=kordycom[8];
kosteczka[pomarancze[3]].kordy=kordycom[1];
kosteczka[pomarancze[4]].kordy=kordycom[4];
kosteczka[pomarancze[5]].kordy=kordycom[7];
kosteczka[pomarancze[6]].kordy=kordycom[0];
kosteczka[pomarancze[7]].kordy=kordycom[3];
kosteczka[pomarancze[8]].kordy=kordycom[6];
    //<>//
  }
   if(rodzajsciany=='l')
 {
for(int i=0;i<9;i++)
{

 kosteczka[pomarancze[i]].rotacjaX= kosteczka[pomarancze[i]].rotacjaX+90;
  
}
kosteczka[pomarancze[0]].kordy=kordycom[2];
kosteczka[pomarancze[1]].kordy=kordycom[5];
kosteczka[pomarancze[2]].kordy=kordycom[8];
kosteczka[pomarancze[3]].kordy=kordycom[1];
kosteczka[pomarancze[4]].kordy=kordycom[4];
kosteczka[pomarancze[5]].kordy=kordycom[7];
kosteczka[pomarancze[6]].kordy=kordycom[0];
kosteczka[pomarancze[7]].kordy=kordycom[3];
kosteczka[pomarancze[8]].kordy=kordycom[6];
   
  }
  }
  
  
};