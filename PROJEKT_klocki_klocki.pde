int x,y;
boolean juzbylo;
MalaKostka kosteczka[]=new MalaKostka[27];
Sciana sciana[]=new Sciana[6];
void setup(){
size(800,600,P3D);
background(205,205,205);
for(int i=0;i<27;i++)
{


 kosteczka[i]=new MalaKostka(10); 
}
restart();
}
void draw(){
 background(255,255,255);
 translate(width/2,height/2);


 rotateX(radians(mouseY));
 rotateY(radians(mouseX*-1));

for(int i=0;i<6;i++)
sciana[i]=new Sciana();

sciana[0].rodzajsciany='f';
sciana[1].rodzajsciany='l';


tworzkostke();
print(kosteczka[12].kordy.x+" "+kosteczka[12].kordy.y+" "+kosteczka[12].kordy.z+"\n");
} 
 
 

void keyPressed(){
  
  if(key=='f')
  {
sciana[0].przypisywanie();
sciana[0].obracanie();

 //<>//
  }
  if(key=='l')
  {
sciana[1].przypisywanie();
sciana[1].obracanie();
  }
  if(key=='x')
  kosteczka[12].rotacjaX+=90;
  if(key=='y')
  kosteczka[12].rotacjaY+=90;
  if(key=='z')
  kosteczka[12].rotacjaZ+=90;
  if(key=='r')
  restart();
}

void restart()
{
 
kosteczka[0].kordy= new Kordy(20,0,0);
kosteczka[1].kordy= new Kordy(-20,0,0);
kosteczka[2].kordy= new Kordy(0,20,0);
kosteczka[3].kordy= new Kordy(0,-20,0);
kosteczka[4].kordy= new Kordy(20,20,0);
kosteczka[5].kordy= new Kordy(-20,20,0);
kosteczka[6].kordy= new Kordy(-20,-20,0);
kosteczka[7].kordy= new Kordy(20,-20,0);
kosteczka[8].kordy= new Kordy(0,0,20);
kosteczka[9].kordy= new Kordy(20,0,20);
kosteczka[10].kordy= new Kordy(0,20,20);
kosteczka[11].kordy= new Kordy(20,20,20);
kosteczka[12].kordy= new Kordy(-20,-20,20);
kosteczka[13].kordy= new Kordy(0,-20,20);
kosteczka[14].kordy= new Kordy(20,-20,20);
kosteczka[15].kordy= new Kordy(-20,20,20);
kosteczka[16].kordy= new Kordy(-20,0,20);
kosteczka[17].kordy= new Kordy(0,0,-20);
 kosteczka[18].kordy= new Kordy(-20,0,-20);
 kosteczka[19].kordy= new Kordy(20,0,-20);
 kosteczka[20].kordy= new Kordy(20,20,-20);
kosteczka[21].kordy= new Kordy(-20,20,-20);
 kosteczka[22].kordy= new Kordy(20,-20,-20);
 kosteczka[23].kordy= new Kordy(0,-20,-20); 
 kosteczka[24].kordy= new Kordy(0,20,-20);  
kosteczka[25].kordy= new Kordy(-20,-20,-20);
for(int i=0;i<26;i++)
 {
   kosteczka[i].rotacjaX=0;
   kosteczka[i].rotacjaY=0;
   kosteczka[i].rotacjaZ=0;
  

 }
}
void tworzkostke()
{
  for(int i=0;i<26;i++)
 {
  kosteczka[i].Stworz(kosteczka[i].kordy);

 }
}