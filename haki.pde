
boolean haki=false;
char dom[]=new char[3];
int n;
void haki(){

 if (dom[0]=='d' && dom[1]=='o' && dom[2]=='m')
  {
  rect(40,40,40,40);
  }
}
void dont(){
   if(haki)
 {
  dom[n] = key;
n++;
}
  if(key=='~')
  haki=true;
 
}