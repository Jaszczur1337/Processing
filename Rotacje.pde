class Algorytmy
{
  int front,back,left,right,up,down;
  int delay=100;
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
                Interpreter("l",delay);
           }
         if(kosteczka[numerkostki].lewy==#ffffff)
           {
            while(!kosteczka[numerkostki].kordy.compare(-20,20,0))
                 Interpreter("l",delay);
           kameray=42;
           przypisywanie();
           Interpreter("lidfidi",delay);
           kameray=0;
           redraw();
           }
   }
   else
    {
      while(szukaniepopozycji(-20,20,0,numerkostki)==7 || szukaniepopozycji(-20,20,0,numerkostki)==15 || szukaniepopozycji(-20,20,0,numerkostki)==17 || szukaniepopozycji(-20,20,0,numerkostki)==25)
      Interpreter("d",delay);
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
                    Interpreter("r",delay);
           }
         if(kosteczka[numerkostki].prawy==#ffffff)
           {
             while(!kosteczka[numerkostki].kordy.compare(20,20,0))
                    Interpreter("r",delay);
             kameray=222;
             przypisywanie();
             Interpreter("lidfidi",delay);
             kameray=0;
             redraw();
           }
    }
     else
    {
        while(szukaniepopozycji(20,20,0,numerkostki)==7 || szukaniepopozycji(20,20,0,numerkostki)==15 || szukaniepopozycji(20,20,0,numerkostki)==17 || szukaniepopozycji(20,20,0,numerkostki)==25)
            Interpreter("d",delay);
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
            Interpreter("f",delay);
            }
         }
       if(kosteczka[numerkostki].tylny==#ffffff)
         {
            while(!kosteczka[numerkostki].kordy.compare(0,20,-20))
             {
               kameray=180;
               Interpreter("f",delay);
             }
             kameray=-225;
             przypisywanie();
             Interpreter("lidfidi",delay);
             kameray=0;
             redraw();
         }
   }
   else
    {
        Interpreter("u",delay);
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
            Interpreter("f",delay);
         }
        if(kosteczka[numerkostki].frontowy==#ffffff)
        {
          while(!kosteczka[numerkostki].kordy.compare(0,20,20))
               Interpreter("f",delay);
          kameray=-45;
          przypisywanie();
          Interpreter("lidfidi",delay);
          kameray=0;
          redraw();
             
        }
     }
   else
    {
        Interpreter("u",delay);
        BialyKrzyz(numerkostki);
    }  
  }
}
 kosteczka[numerkostki].wielkosc=10;


}
void BialyKrzyz()
{
 Interpreter("llrrffbb",delay);
 while(kosteczka[7].tylny!=#fe7f00)
 Interpreter("u",delay);
 Interpreter("bb",delay);
  while(kosteczka[15].lewy!=#00c700)
 Interpreter("u",delay);
  Interpreter("ll",delay);
  while(kosteczka[17].prawy!=#0000ff)
 Interpreter("u",delay);
 Interpreter("rr",delay);
  while(kosteczka[25].frontowy!=#ff0000)
 Interpreter("u",delay);
 Interpreter("ff",delay);
 
}
void BialeRogi()
{
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  kosteczka[24].wielkosc=15;
  if(!kosteczka[24].kordy.compare(-20,20,20)) //JEŻELI NIE JEST NA POZYCJI
  {
    if(kosteczka[24].kordy.compare('y',-20)) // JEŻELI JEST NA GÓRZE
    {
while(!kosteczka[24].kordy.compare('x',-20) || !kosteczka[24].kordy.compare('z',20)) // DOPÓKI NIE JEST NA ODPOWIEDNIM X I Z
Interpreter("u",delay);
kameray=42;
while(kosteczka[24].dolny!=#ffffff) // DOPÓKI BIAŁY NIE JEST NA DOLE
{
Interpreter("liuilu",delay);
print("koniec");
}

}  
}
if(kosteczka[24].kordy.compare(-20,20,20) && kosteczka[24].dolny!=#ffffff) // JEŻELI JEST NA POZYCJI ALE ŹLE OBRÓCONY
{kameray=42;
  while(kosteczka[24].dolny!=#ffffff) // DOPÓKI BIAŁY NIE JEST NA DOLE
{
Interpreter("liuilu",delay);
}
}
kosteczka[24].wielkosc=10;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
kosteczka[26].wielkosc=15;
if(!kosteczka[26].kordy.compare(20,20,20))
  {
    if(kosteczka[26].kordy.compare('y',-20))
    {
while(!kosteczka[26].kordy.compare('x',20) || !kosteczka[26].kordy.compare('z',20))
Interpreter("u"/*talon na k*** i balon*/,delay);
kameray=-45;
while(kosteczka[26].dolny!=#ffffff)
{
Interpreter("liuilu",delay);
print("koniec");
}

}
    
}
if(kosteczka[26].kordy.compare(20,20,20) && kosteczka[26].dolny!=#ffffff) // JEŻELI JEST NA POZYCJI ALE ŹLE OBRÓCONY
{
  kameray=-45;
  while(kosteczka[26].dolny!=#ffffff) // DOPÓKI BIAŁY NIE JEST NA DOLE
{  
Interpreter("liuilu",delay);
}
}
kosteczka[26].wielkosc=10;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
kosteczka[6].wielkosc=15;
if(!kosteczka[6].kordy.compare(-20,20,-20))
  {
    if(kosteczka[6].kordy.compare('y',-20))
    {
while(!kosteczka[6].kordy.compare('x',-20) || !kosteczka[6].kordy.compare('z',-20))
Interpreter("u",delay);
kameray=132;
while(kosteczka[6].dolny!=#ffffff)
{
Interpreter("liuilu",delay);
print("koniec");
}

}
    
}
if(kosteczka[6].kordy.compare(-20,20,-20) && kosteczka[6].dolny!=#ffffff) // JEŻELI JEST NA POZYCJI ALE ŹLE OBRÓCONY
{
  kameray=132;
  while(kosteczka[6].dolny!=#ffffff) // DOPÓKI BIAŁY NIE JEST NA DOLE
{  
Interpreter("liuilu",delay);
}
}
kosteczka[6].wielkosc=10;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
kosteczka[8].wielkosc=15;
if(!kosteczka[8].kordy.compare(20,20,-20))
  {
    if(kosteczka[8].kordy.compare('y',-20))
    {
while(!kosteczka[8].kordy.compare('x',20) || !kosteczka[8].kordy.compare('z',-20))
Interpreter("u",delay);
kameray=222;
while(kosteczka[8].dolny!=#ffffff)
{
Interpreter("liuilu",delay);
print("koniec");
}

}
    
}
if(kosteczka[8].kordy.compare(20,20,-20) && kosteczka[8].dolny!=#ffffff) // JEŻELI JEST NA POZYCJI ALE ŹLE OBRÓCONY
{
  kameray=222;
  while(kosteczka[8].dolny!=#ffffff) // DOPÓKI BIAŁY NIE JEST NA DOLE
{  
Interpreter("liuilu",delay);
}
}
kosteczka[8].wielkosc=10;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  while((!kosteczka[24].kordy.compare(-20,20,20) && kosteczka[24].dolny!=#ffffff) || (!kosteczka[26].kordy.compare(20,20,20) && kosteczka[26].dolny!=#ffffff) || (!kosteczka[6].kordy.compare(-20,20,-20) && kosteczka[26].dolny!=#ffffff) || (!kosteczka[8].kordy.compare(20,20,-20) && kosteczka[8].dolny!=#ffffff) )
  BialeRogi();
}
void SrodkowyRzad(int numerkostki)  //3,5,21,23
{
  kosteczka[numerkostki].wielkosc=15;
  if(numerkostki==3)
  {
   if(kosteczka[3].kordy.compare('y',-20)) //JEŻELI JEST W GÓRNYM RZĘDZIE
   {
     while(kosteczka[3].kordy.z!=-20) //DOPÓKI NIE JEST NA TYLNEJ (WŁAŚCIWEJ) ŚCIANIE
     Interpreter("u",delay);
     if(kosteczka[3].tylny!=#fe7f00)
     {
     Interpreter("ui",delay);
   kameray=90; 
   redraw();
   Interpreter("uiliulufuifi",delay);
   }
     else
     {
     kameray=180;
     redraw();
     Interpreter("uruiriuifiuf",delay);
     }  
 }
   else if(kosteczka[3].tylny!=#fe7f00)
   {
    SrodkowyRzadWyrzucanie(3);
    SrodkowyRzad(3);
   }
  }
  if(numerkostki==5)
  {
   if(kosteczka[5].kordy.compare('y',-20)) //JEŻELI JEST W GÓRNYM RZĘDZIE
   {
     while(kosteczka[5].kordy.z!=-20) //DOPÓKI NIE JEST NA TYLNEJ (WŁAŚCIWEJ) ŚCIANIE
     Interpreter("u",delay);
     if(kosteczka[5].tylny!=#fe7f00)
     {
     Interpreter("u",delay);
   kameray=-90; 
   redraw();
   Interpreter("uruiriuifiuf",delay);
   }
   else
   {
     kameray=180;
     redraw();
     Interpreter("uiliulufuifi",delay);
   }
   }
   else if(kosteczka[5].tylny!=#fe7f00)
   {
    SrodkowyRzadWyrzucanie(5);
    SrodkowyRzad(5);
   }
  }
  if(numerkostki==21)
  {
   if(kosteczka[21].kordy.compare('y',-20)) 
   {
     while(kosteczka[21].kordy.z!=20) 
     Interpreter("u",delay);
     if(kosteczka[21].frontowy!=#ff0000)
    {
     Interpreter("u",delay);
     kameray=90;
     Interpreter("uruiriuifiuf",delay);
   }
   else{
     kameray=0;
     redraw();
     Interpreter("uiliulufuifi",delay);
   }  
 }
   else if(kosteczka[21].frontowy!=#ff0000)
   {
    SrodkowyRzadWyrzucanie(21);
    SrodkowyRzad(21);
   }
  }
  if(numerkostki==23)
  {
   if(kosteczka[23].kordy.compare('y',-20)) //JEŻELI JEST W GÓRNYM RZĘDZIE
   {
     while(kosteczka[23].kordy.z!=20) //DOPÓKI NIE JEST NA TYLNEJ (WŁAŚCIWEJ) ŚCIANIE
     Interpreter("u",delay);
     if(kosteczka[23].frontowy!=#ff0000)
     {
       Interpreter("ui",delay);
     kameray=-90;
     Interpreter("uiliulufuifi",delay);
     }
     else
     {
     kameray=0;
     redraw();
     Interpreter("uruiriuifiuf",delay);
     }  
 }
   else if(kosteczka[23].frontowy!=#ff0000)
   {
    SrodkowyRzadWyrzucanie(23);
    SrodkowyRzad(23);
   }
  }
  kosteczka[numerkostki].wielkosc=10;
}
void SrodkowyRzadWyrzucanie(int numerkostki)
{
  if(kosteczka[numerkostki].kordy.z==-20 && kosteczka[numerkostki].kordy.x==-20)
    {
     kameray=180;
     Interpreter("uruiriuifiuf",delay);
    }
    if(kosteczka[numerkostki].kordy.z==-20 && kosteczka[numerkostki].kordy.x==20)
    {
      kameray=180;
     Interpreter("uiliulufuifi",delay);
    }
    if(kosteczka[numerkostki].kordy.z==20 && kosteczka[numerkostki].kordy.x==-20)
    {
      kameray=0;
      Interpreter("uiliulufuifi",delay);
    }
    if(kosteczka[numerkostki].kordy.z==20 && kosteczka[numerkostki].kordy.x==20)
    {
      kameray=0;
     Interpreter("uruiriuifiuf",delay);
    }
}
void ZoltyKrzyz()
{
  boolean kostki[]=new boolean[4];
  kostki[0]=false; // 1
  kostki[1]=false; // 9
  kostki[2]=false; // 11
  kostki[3]=false; // 19
  kameray=0;
  redraw();
  while(!kostki[0] || !kostki[1] || !kostki[2] || !kostki[3])
  {
    Interpreter("fruriuifi",500);
    if(kosteczka[1].gorny==#ffff00)
    kostki[0]=true;
    if(kosteczka[9].gorny==#ffff00)
    kostki[1]=true;
    if(kosteczka[11].gorny==#ffff00)
    kostki[2]=true;
    if(kosteczka[19].gorny==#ffff00)
    kostki[3]=true;
    
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