void setup(){
  size(800,600,P3D);
background(205,205,205);
  
  
  
}
boolean haki=false;
char dom[]=new char[3];
int n;
void draw(){

 if (dom[0]=='d' && dom[1]=='o' && dom[2]=='m')
  {
  rect(40,40,40,40);
  }
}
void keyPressed(){
   if(haki)
 {
  dom[n] = key;
n++;
}
  if(key=='~')
  haki=true;
 
}