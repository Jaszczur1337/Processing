class Algorytmy
{
  int front,back,left,right,up,down;
  void przypisywanie() // Dzięki temu, klikając 'f' zawsze obracasz frontową ścianę
  {
    print(kameray+"\n");
    // Oś Y
    if(kameray==0)
    {
    front=0;left=1;back=3;right=2;
    }
    if(kameray==90 || kameray==-270)
    {
    front=1;left=3;back=2;right=0;
    }
    if(kameray==180 || kameray==-180)
    {
    front=3;left=2;back=0;right=1;
    }
    if(kameray==270 || kameray==-90)
    {
    front=2;left=0;back=1;right=3;
    }
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
}
void obracaniekamero()
{
kameray+=90;
if(kameray>=360)
kameray=0;
}
void BialyKrzyz(int numerkostki)
{
  
 if(kosteczka[numerkostki].lewy!=#ffffff || kosteczka[numerkostki].prawy!=#ffffff) // warunki, no czaicie co nie?
 {
  if(kosteczka[numerkostki].lewy!=#ffffff && kosteczka[numerkostki].kordy.compare('x',-20))
  { 
   
   while(kosteczka[numerkostki].gorny!=#ffffff)
   {
Interpreter("l"); 
 }

  }
  if(kosteczka[numerkostki].prawy!=#ffffff && kosteczka[numerkostki].kordy.compare('x',20))
  {
   while(kosteczka[numerkostki].gorny!=#ffffff)  
   {
 Interpreter("r"); 

   }  
}
  }
 
}
void Interpreter(String s) // uzycie Interpreter("fir") obróci frontową ścianę w lewo, i prawą w prawo
{
  char k='r';
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
   delay(1000);
   
  }
}
  
};