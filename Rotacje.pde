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
  obracaniekamero();
 if(kosteczka[numerkostki].lewy!=#ffffff || kosteczka[numerkostki].prawy!=#ffffff)
 {
  if(kosteczka[numerkostki].lewy!=#ffffff && kosteczka[numerkostki].kordy.compare('x',-20))
  { 
   while(kosteczka[numerkostki].gorny!=#ffffff)   
 sciana[left].obracanie('r'); 
    }
  if(kosteczka[numerkostki].prawy!=#ffffff && kosteczka[numerkostki].kordy.compare('x',20))
  {
   while(kosteczka[numerkostki].gorny!=#ffffff)   
 sciana[right].obracanie('r'); 
  }
  }
 
}
  
};