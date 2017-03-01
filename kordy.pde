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
  Kordy(int iks,int igreg, int zet)
  {
   x=iks;
   y=igreg;
   z=zet;
  }
};