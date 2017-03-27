class Algorytmy
{
  int front,back,left,right,up,down;
  void przypisywanie() // Dzięki temu, klikając 'f' zawsze obracasz frontową ścianę
  {
    print(kameray+"\n");
    // Oś X
    if(kamerax==0)
    {
    front=0;down=5;back=3;up=4;
    }
    if(kamerax==90 || kamerax==-270)
    {
    front=5;down=3;back=4;up=0;
    }
    if(kamerax==180 || kamerax==-180)
    {
    front=3;down=4;back=0;up=5;
    }
    if(kamerax==270 || kamerax==-90)
    {
    front=4;down=0;back=5;up=3;
    }
    // Oś Y
    if(kameray>-45 && kameray<45)
    {
    front=0;left=1;back=3;right=2;
    }
    if((kameray>=45 && kameray<135) || (kameray<=-225 && kameray>-315))
    {
    front=1;left=3;back=2;right=0;
    }
    if((kameray>=135 && kameray<225) || (kameray<=-135 && kameray>-225))
    {
    front=3;left=2;back=0;right=1;
    }
    if((kameray>=225 && kameray<315) || (kameray<=-45 && kameray>-135))
    {
    front=2;left=0;back=1;right=3;
    }
      
}
void obracaniekamero()
{
kameray+=90;
if(kameray>=360)
kameray=0;
}
void BialyKrzyz(int numerkostki)
{
 kosteczka[numerkostki].wielkosc=15;
 redraw();
if(kosteczka[numerkostki].dolny!=#ffffff)
{

  if(kosteczka[numerkostki].kordy.compare('x',-20))
  {
    
    if(szukaniepopozycji(-20,20,0,numerkostki)!=7 && szukaniepopozycji(-20,20,0,numerkostki)!=15 && szukaniepopozycji(-20,20,0,numerkostki)!=17 && szukaniepopozycji(-20,20,0,numerkostki)!=25)
    {
         if(kosteczka[numerkostki].lewy!=#ffffff)
           {
            while(kosteczka[numerkostki].dolny!=#ffffff)
                Interpreter("l",500);
           }
         if(kosteczka[numerkostki].lewy==#ffffff)
           {
            while(!kosteczka[numerkostki].kordy.compare(-20,20,0))
                 Interpreter("l",500);
           kameray=42;
           przypisywanie();
           Interpreter("lidfidi",500);
           kameray=0;
           redraw();
           }
   }
   else
    {
      while(szukaniepopozycji(-20,20,0,numerkostki)==7 || szukaniepopozycji(-20,20,0,numerkostki)==15 || szukaniepopozycji(-20,20,0,numerkostki)==17 || szukaniepopozycji(-20,20,0,numerkostki)==25)
      Interpreter("d",500);
      BialyKrzyz(numerkostki);
    }
}


  if(kosteczka[numerkostki].kordy.compare('x',20)  )
  {
    if(szukaniepopozycji(20,20,0,numerkostki)!=7 && szukaniepopozycji(20,20,0,numerkostki)!=15 && szukaniepopozycji(20,20,0,numerkostki)!=17 && szukaniepopozycji(20,20,0,numerkostki)!=25)
    {
         if(kosteczka[numerkostki].prawy!=#ffffff)
           {
              while(kosteczka[numerkostki].dolny!=#ffffff)
                    Interpreter("r",500);
           }
         if(kosteczka[numerkostki].prawy==#ffffff)
           {
             while(!kosteczka[numerkostki].kordy.compare(20,20,0))
                    Interpreter("r",500);
             kameray=222;
             przypisywanie();
             Interpreter("lidfidi",500);
             kameray=0;
             redraw();
           }
    }
     else
    {
        while(szukaniepopozycji(20,20,0,numerkostki)==7 || szukaniepopozycji(20,20,0,numerkostki)==15 || szukaniepopozycji(20,20,0,numerkostki)==17 || szukaniepopozycji(20,20,0,numerkostki)==25)
            Interpreter("d",500);
        BialyKrzyz(numerkostki);
    }
  }

  if(kosteczka[numerkostki].kordy.compare('z',-20))
  {
   if(szukaniepopozycji(0,20,-20,numerkostki)!=7 && szukaniepopozycji(0,20,-20,numerkostki)!=15 && szukaniepopozycji(0,20,-20,numerkostki)!=17 && szukaniepopozycji(0,20,-20,numerkostki)!=25)
     {
       if(kosteczka[numerkostki].tylny!=#ffffff)
         {
            while(kosteczka[numerkostki].dolny!=#ffffff)
            {
            kameray=180;
            Interpreter("f",500);
            }
         }
       if(kosteczka[numerkostki].tylny==#ffffff)
         {
            while(!kosteczka[numerkostki].kordy.compare(0,20,-20))
             {
               kameray=180;
               Interpreter("f",500);
             }
             kameray=-225;
             przypisywanie();
             Interpreter("lidfidi",500);
             kameray=0;
             redraw();
         }
   }
   else
    {
        Interpreter("u",500);
        BialyKrzyz(numerkostki);
    }
  }
  if(kosteczka[numerkostki].kordy.compare('z',20))
  {
    if(szukaniepopozycji(0,20,20,numerkostki)!=7 && szukaniepopozycji(0,20,20,numerkostki)!=15 && szukaniepopozycji(0,20,20,numerkostki)!=17 && szukaniepopozycji(0,20,20,numerkostki)!=25)
     {
        if(kosteczka[numerkostki].frontowy!=#ffffff)
         {
          while(kosteczka[numerkostki].dolny!=#ffffff)
            Interpreter("f",500);
         }
        if(kosteczka[numerkostki].frontowy==#ffffff)
        {
          while(!kosteczka[numerkostki].kordy.compare(0,20,20))
               Interpreter("f",500);
          kameray=-45;
          przypisywanie();
          Interpreter("lidfidi",500);
          kameray=0;
          redraw();
             
        }
     }
   else
    {
        Interpreter("u",500);
        BialyKrzyz(numerkostki);
    }  
  }
}
 kosteczka[numerkostki].wielkosc=10;


}
void BialyKrzyz()
{
 Interpreter("llrrffbb",500);
 while(kosteczka[7].tylny!=#fe7f00)
 Interpreter("u",500);
 Interpreter("bb",500);
  while(kosteczka[15].lewy!=#00c700)
 Interpreter("u",500);
  Interpreter("ll",500);
  while(kosteczka[17].prawy!=#0000ff)
 Interpreter("u",500);
 Interpreter("rr",500);
  while(kosteczka[17].frontowy!=#ff0000)
 Interpreter("u",500);
 Interpreter("ff",500);
 
}
void BialeRogi()
{
  if(!kosteczka[24].kordy.compare(-20,20,20))
  {
    if(kosteczka[24].kordy.compare('y',-20))
    {
while(!kosteczka[24].kordy.compare('x',-20) || !kosteczka[24].kordy.compare('z',20))
Interpreter("u",500);
kameray=42;
while(kosteczka[24].dolny!=#ffffff)
{
Interpreter("luliui",1000);
print("koniec");
}
}
    
}
}
void Shuffle()
{
  String builder="f";
  float x;
  for(int i=0;i<250;i++)
  {
 x=int (random(0,5)); 
 print(x+"\n");
  if(x==0)
 builder+="f";
  if(x==1)
  builder+="b";
  if(x==2)
  builder+="l";
  if(x==3)
  builder+="r";
  if(x==4)
  builder+="u";
  if(x==5)
  builder+="d";
  }
  Interpreter(builder,0);
}
void Interpreter(String s,int delay) // uzycie Interpreter("fir") obróci frontową ścianę w lewo, i prawą w prawo
{
  char k='r';
  redraw();
  delay(delay);

  for(int i=0;i<s.length();i++)
  {
    if(i+1<s.length())
    {
    if(s.charAt(i+1)=='i')
    k='l';
   if(s.charAt(i+1)!='i')
  k='r';
    }
   if(s.charAt(i)=='f')
   sciana[front].obracanie(k);
   if(s.charAt(i)=='b')
   sciana[back].obracanie(k);
   if(s.charAt(i)=='l')
   sciana[left].obracanie(k);
   if(s.charAt(i)=='r')
   sciana[right].obracanie(k);
   if(s.charAt(i)=='u')
   sciana[up].obracanie(k);
   if(s.charAt(i)=='d')
   sciana[down].obracanie(k);
   delay(delay);
   
  }
}

};