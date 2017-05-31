int kamerax, kameray,strzalay;
int i, lastTime, nowtime,plus; 
char keycode, kierunki;
int ile=2;
boolean juzbylo,trzynatrzy=false;
MalaKostka kosteczka[]=new MalaKostka[27];
Sciana sciana[]=new Sciana[6];
Algorytmy algorytmmanager;

void setup() {
  kameray=0;
  kamerax=0;
 size(2000,800,P3D);
  lastTime=millis();

  background(205, 205, 205);
  restart(); 
  kierunki='r';
  algorytmmanager=new Algorytmy();

  strzalay=-1000;
  sciana[0]=new Sciana('f',ile);
  sciana[1]=new Sciana('l',ile);
  sciana[2]=new Sciana('r',ile);
  sciana[3]=new Sciana('b',ile);
  sciana[4]=new Sciana('u',ile);
  sciana[5]=new Sciana('d',ile);
  noLoop();
}
void draw() {

  background(255, 255, 255);
  translate(width/2,height/2,500);
  algorytmmanager.przypisywanie();
  obracaniekamery();
  rotateX(radians(kamerax));
  rotateY(radians(kameray));
  tworzkostke();
} 
void obracaniekamery()
{

  if (keycode=='a')
  {
    kameray-=3;
    if (kameray<-360)
      kameray=0;
  }
  if (keycode=='d')
  {
    kameray+=3; 
    if (kameray>360)
      kameray=0;
  }
  if (keycode=='w')
  {
    kamerax+=3;
    if (kamerax>360)
      kamerax=0;
  }
  if (keycode=='s')
  {
    kamerax-=3; 
    if (kamerax<-360)
      kamerax=0;
  }
}
void keyReleased()
{

  keycode='p';
}

void keyPressed() {

//////////////////////////////////////////////////////////
  if (keyCode==LEFT)
  {
    keycode='a';
    algorytmmanager.przypisywanie();
    redraw();
  }
  if (keyCode==RIGHT)
  {
    keycode='d';
    algorytmmanager.przypisywanie();
    redraw();
  }
  if (keyCode==UP)
  {
    keycode='w';
    algorytmmanager.przypisywanie();
    redraw();
  }
  if (keyCode==DOWN)
  {
    keycode='s';
    algorytmmanager.przypisywanie();
    redraw();
  }
  if (keyCode==BACKSPACE)
    kierunki='l';
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    if(ile==3){
  if(key==49)
  {
    algorytmmanager.BialyKrzyz(7);
    algorytmmanager.BialyKrzyz(15);
    algorytmmanager.BialyKrzyz(17);
    algorytmmanager.BialyKrzyz(25);
    algorytmmanager.BialyKrzyz();
  }
  if(key==50)
  {
    algorytmmanager.BialeRogi();
  }
  if(key==51)
  {
    algorytmmanager.SrodkowyRzad(3);
   algorytmmanager.SrodkowyRzad(5);
   algorytmmanager.SrodkowyRzad(21);
   algorytmmanager.SrodkowyRzad(23);
  }
  if(key==52)
  {
       algorytmmanager.ZoltyKrzyz();
  }
  if(key==53)
  {
    algorytmmanager.ZolteRogi();
  }
  if (key=='x')
  {

    restart();
  }
}
if(ile==2)
{
  if(key==49)
  algorytmmanager.BialaSciana();
}
///////////////////////////////////////////////////////////////////////////////
  if (key=='g')
  {
    algorytmmanager.Shuffle();
  }
  if (key=='f')
  {

    sciana[algorytmmanager.front].obracanie(kierunki);
  }
  if (key=='l')
  {

    sciana[algorytmmanager.left].obracanie(kierunki);
  }
  if (key=='r')
  {

    sciana[algorytmmanager.right].obracanie(kierunki);
  }
  if (key=='b')
  {

    sciana[algorytmmanager.back].obracanie(kierunki);
  }
  if (key=='u')
  {

    sciana[algorytmmanager.up].obracanie(kierunki);
  }
  if (key=='d')
  {

    sciana[algorytmmanager.down].obracanie(kierunki);
  }
  /////////////////////////////////////////////////////////////////////////////
}

void restart()
{
  if(ile==3)
  {
  for (int i=0; i<27; i++)
  {
    kosteczka[i]=new MalaKostka(10);
  }
  kosteczka[0].kordy= new Kordy(-20, -20, -20);
  kosteczka[1].kordy= new Kordy(0, -20, -20);
  kosteczka[2].kordy= new Kordy(20, -20, -20);
  kosteczka[3].kordy= new Kordy(-20, 0, -20);
  kosteczka[4].kordy= new Kordy(0, 0, -20);
  kosteczka[5].kordy= new Kordy(20, 0, -20);
  kosteczka[6].kordy= new Kordy(-20, 20, -20);
  kosteczka[7].kordy= new Kordy(0, 20, -20);
  kosteczka[8].kordy= new Kordy(20, 20, -20);
  kosteczka[9].kordy= new Kordy(-20, -20, 0);
  kosteczka[10].kordy= new Kordy(0, -20, 0);
  kosteczka[11].kordy= new Kordy(20, -20, 0);
  kosteczka[12].kordy= new Kordy(-20, 0, 0);
  kosteczka[13].kordy= new Kordy(0, 0, 0);
  kosteczka[14].kordy= new Kordy(20, 0, 0);
  kosteczka[15].kordy= new Kordy(-20, 20, 0);
  kosteczka[16].kordy= new Kordy(0, 20, 0);
  kosteczka[17].kordy= new Kordy(20, 20, 0);
  kosteczka[18].kordy= new Kordy(-20, -20, 20);
  kosteczka[19].kordy= new Kordy(0, -20, 20);
  kosteczka[20].kordy= new Kordy(20, -20, 20);
  kosteczka[21].kordy= new Kordy(-20, 0, 20);
  kosteczka[22].kordy= new Kordy(0, 0, 20);
  kosteczka[23].kordy= new Kordy(20, 0, 20); 
  kosteczka[24].kordy= new Kordy(-20, 20, 20);  
  kosteczka[25].kordy= new Kordy(0, 20, 20);
  kosteczka[26].kordy= new Kordy(20, 20, 20);
  kamerax=-45;
  kameray=0;
  }
  if(ile==2)
  {
    for (int i=0; i<8; i++)
  {
    kosteczka[i]=new MalaKostka(10);
  }
    kosteczka[0].kordy=new Kordy(-10,-10,-10);
    kosteczka[1].kordy=new Kordy(10,-10,-10);
    kosteczka[2].kordy=new Kordy(-10,10,-10);
    kosteczka[3].kordy=new Kordy(10,10,-10);
    kosteczka[4].kordy=new Kordy(-10,-10,10);
    kosteczka[5].kordy=new Kordy(10,-10,10);
    kosteczka[6].kordy=new Kordy(-10,10,10);
    kosteczka[7].kordy=new Kordy(10,10,10);
    kamerax=-45;
    kameray=0;
  }
}
int szukaniepopozycji(int x, int y, int z, int numerkostki)
{
  for (int i=0; i<27; i++)
  {
    if (kosteczka[i].kordy.compare(x, y, z))
    {
      if (i!=numerkostki)
        return i;
    }
  }
  return -1;
}
int szukaniepopozycji(int x, int y, int z)
{
  for (int i=0; i<27; i++)
  {
    if (kosteczka[i].kordy.compare(x, y, z))
    {
      
        return i;
    }
  }
  return -1;
}

void tworzkostke()
{
  if(ile==3)
  {
  for (int i=0; i<27; i++)
  {
    kosteczka[i].Stworz(kosteczka[i].kordy);
  }
  }
  if(ile==2)
  {
    for (int i=0; i<8; i++)
  {
    kosteczka[i].Stworz(kosteczka[i].kordy);
  }
  }
}