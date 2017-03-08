class Kordy
{
  int x;
  int y;
  int z;
  boolean compare(Kordy kordy)
  {
    if(x==kordy.x && y==kordy.y && z==kordy.z)
    return true;
    else
    return false;
  }
  boolean compare(char wspolrzedna,int kordy)
  {
    if(wspolrzedna==x || wspolrzedna==y || wspolrzedna==z)
    {
     if(wspolrzedna==x && kordy==x)
     return true;
     if(wspolrzedna==y && kordy==y)
     return true;
     if(wspolrzedna==z && kordy==z)
     return true;
    }
    return false;
  }
  Kordy(int iks,int igreg, int zet)
  {
   x=iks;
   y=igreg;
   z=zet;
  }
  void wypisz()
  {
    print(x+" "+y+" "+z+"\n");
  }
};