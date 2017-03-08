int x,y;
int i; 
char keycode,kierunki;
boolean juzbylo;
MalaKostka kosteczka[]=new MalaKostka[27];
Sciana sciana[]=new Sciana[6];
Algorytmy algorytmmanager;
void setup(){
size(800,600,P3D);
background(205,205,205);
restart(); 
kierunki='r';
algorytmmanager=new Algorytmy();
}
void draw(){
 background(255,255,255);
 translate(width/2,height/2);


 

for(int i=0;i<6;i++)
sciana[i]=new Sciana();
algorytmmanager.przypisywanie();
sciana[0].rodzajsciany='f';
sciana[1].rodzajsciany='l';
sciana[2].rodzajsciany='r';
sciana[3].rodzajsciany='b';
sciana[4].rodzajsciany='u';
sciana[5].rodzajsciany='d';
kosteczka[1].wielkosc=15;

obracaniekamery();

rotateX(radians(x));
rotateY(radians(y));

tworzkostke();
algorytmmanager.BialyKrzyz();
} 
 void obracaniekamery()
 {
   
   if(keycode=='a')
   {
     y--;
     if(y<-360)
     y=0;
   }
   if(keycode=='d')
   {
    y++; 
    if(y>360)
     y=0;
   }
   if(keycode=='w')
   {
     x++;
     if(x>360)
     x=0;
   }
   if(keycode=='s')
   {
    x--; 
   if(x<-360)
     x=0;  
 }
 }
 void keyReleased()
 {
  
  keycode='p';
  
 }

void keyPressed(){

 
  if(keyCode==LEFT)
  {
  keycode='a';
  }
  if(keyCode==RIGHT)
  {
  keycode='d';
  }
  if(keyCode==UP)
  {
  keycode='w';
  }
  if(keyCode==DOWN)
  {
  keycode='s';
  }
  if(keyCode==BACKSPACE)
  kierunki='l';
  
  if(key=='f')
  {

sciana[algorytmmanager.front].obracanie(kierunki);

  }
  if(key=='l')
  {

sciana[algorytmmanager.left].obracanie(kierunki);
  }
  if(key=='r')
  {

  sciana[algorytmmanager.right].obracanie(kierunki);
  }
    if(key=='b')
  {

  sciana[algorytmmanager.back].obracanie(kierunki);
  }
    if(key=='u')
  {

  sciana[algorytmmanager.up].obracanie(kierunki);
  }
    if(key=='d')
  {

  sciana[algorytmmanager.down].obracanie(kierunki);
  }
  if(key=='x')
  restart();
}

void restart()
{
 for(int i=0;i<27;i++)
{
 kosteczka[i]=new MalaKostka(10); 
}
kosteczka[0].kordy= new Kordy(-20,-20,-20);
kosteczka[1].kordy= new Kordy(0,-20,-20);
kosteczka[2].kordy= new Kordy(20,-20,-20);
kosteczka[3].kordy= new Kordy(-20,0,-20);
kosteczka[4].kordy= new Kordy(0,0,-20);
kosteczka[5].kordy= new Kordy(20,0,-20);
kosteczka[6].kordy= new Kordy(-20,20,-20);
kosteczka[7].kordy= new Kordy(0,20,-20);
kosteczka[8].kordy= new Kordy(20,20,-20);
kosteczka[9].kordy= new Kordy(-20,-20,0);
kosteczka[10].kordy= new Kordy(0,-20,0);
kosteczka[11].kordy= new Kordy(20,-20,0);
kosteczka[12].kordy= new Kordy(-20,0,0);
kosteczka[13].kordy= new Kordy(0,0,0);
kosteczka[14].kordy= new Kordy(20,0,0);
kosteczka[15].kordy= new Kordy(-20,20,0);
kosteczka[16].kordy= new Kordy(0,20,0);
kosteczka[17].kordy= new Kordy(20,20,0);
 kosteczka[18].kordy= new Kordy(-20,-20,20);
 kosteczka[19].kordy= new Kordy(0,-20,20);
 kosteczka[20].kordy= new Kordy(20,-20,20);
kosteczka[21].kordy= new Kordy(-20,0,20);
 kosteczka[22].kordy= new Kordy(0,0,20);
 kosteczka[23].kordy= new Kordy(20,0,20); 
 kosteczka[24].kordy= new Kordy(-20,20,20);  
kosteczka[25].kordy= new Kordy(0,20,20);
kosteczka[26].kordy= new Kordy(20,20,20);

}
void tworzkostke()
{
  for(int i=0;i<27;i++)
 {
  kosteczka[i].Stworz(kosteczka[i].kordy);

 }
}