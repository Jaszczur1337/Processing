class Algorytmy
{
  int front,back,left,right,up,down;
  void przypisywanie() // Dzięki temu, klikając 'f' zawsze obracasz frontową ścianę
  {
    // Oś Y
    if(y>0 && y<90)
    {
    front=0;left=1;back=3;right=2;
    }
    if(y>90 && y<180)
    {
    front=1;left=3;back=2;right=0;
    }
    if(y>180 && y<270)
    {
    front=3;left=2;back=0;right=1;
    }
    if(y>270 && y<360)
    {
    front=2;left=0;back=1;right=3;
    }
    // Oś X
    if(x>0 && x<90)
    {
    front=0;down=5;back=3;up=4;
    }
    if(x>90 && x<180)
    {
    front=5;down=3;back=4;up=0;
    }
    if(x>180 && x<270)
    {
    front=3;down=4;back=0;up=5;
    }
    if(x>270 && x<360)
    {
    front=4;down=0;back=5;up=3;
    }  
}
  
};