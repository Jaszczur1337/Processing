class MalaKostka
{
  int rotacjaX,rotacjaY,rotacjaZ,wielkosc;
  color frontowy,lewy,prawy,dolny,gorny,tylny,tymczasowy;
  MalaKostka(int duzosc)
  {
   wielkosc=duzosc;
   frontowy=#ff0000;
   prawy=#0000ff;
   tylny=#fe7f00;
   gorny=#ffff00;
   lewy=#00c700;
   dolny=#ffffff;
  }
  Kordy kordy;
  
  void rotacjalewa(char kierunek)
  {
    if(kierunek=='r')
    {
      tymczasowy=frontowy;
      frontowy=gorny;
      gorny=tylny;
      tylny=dolny;
      dolny=tymczasowy;
  }
  else
  rotacjaprawa('r');
  }
  void rotacjafrontowa(char kierunek)
  {
   if(kierunek=='r')
   {
     tymczasowy=lewy;
    lewy=dolny;
    dolny=prawy;
    prawy=gorny;
    gorny=tymczasowy;
   }
   else
   rotacjatylna('r');
  }
  void rotacjadolna(char kierunek)
  {
   if(kierunek=='r')
   {  
     tymczasowy=frontowy;
     frontowy=lewy;
     lewy=tylny;
     tylny=prawy;
     prawy=tymczasowy;
    
   }
   else
   rotacjagorna('r');
  }
  void rotacjaprawa(char kierunek)
  {
   if(kierunek=='r')
   {
    tymczasowy=frontowy;
    frontowy=dolny;
    dolny=tylny;
    tylny=gorny;
    gorny=tymczasowy;
   }
   else
   rotacjalewa('r');
  }
  void rotacjagorna(char kierunek)
  {
   if(kierunek=='r')
   {
    tymczasowy=frontowy;
    frontowy=prawy;
    prawy=tylny;
    tylny=lewy;
    lewy=tymczasowy;
   }
   else
   rotacjadolna('r');
  }
  void rotacjatylna(char kierunek)
  {
   if(kierunek=='r')
   {
    tymczasowy=prawy;
    prawy=dolny;
    dolny=lewy;
    lewy=gorny;
    gorny=tymczasowy;
   }
   else
   rotacjafrontowa('r');
  }
    
  
   void Stworz(Kordy kordy)
  {

  pushMatrix();
  if(kordy!=null)
  translate(kordy.x,kordy.y,kordy.z);
    beginShape(QUADS);
    
  fill(frontowy);
  vertex(-wielkosc, -wielkosc,  wielkosc);
  vertex( wielkosc, -wielkosc,  wielkosc);
  vertex( wielkosc,  wielkosc,  wielkosc);
  vertex(-wielkosc,  wielkosc,  wielkosc);
  endShape();
  // Back
  beginShape(QUADS);
  fill(tylny);
  vertex( wielkosc, -wielkosc, -wielkosc);
  vertex(-wielkosc, -wielkosc, -wielkosc);
  vertex(-wielkosc,  wielkosc, -wielkosc);
  vertex( wielkosc,  wielkosc, -wielkosc);
  endShape();
  // Bottom
  beginShape(QUADS);
  fill(dolny);
  vertex(-wielkosc,  wielkosc,  wielkosc);
  vertex( wielkosc,  wielkosc,  wielkosc);
  vertex( wielkosc,  wielkosc, -wielkosc);
  vertex(-wielkosc,  wielkosc, -wielkosc);
  endShape();
  // Top
  beginShape(QUADS);
  fill(gorny);
  vertex(-wielkosc, -wielkosc, -wielkosc);
  vertex( wielkosc, -wielkosc, -wielkosc);
  vertex( wielkosc, -wielkosc,  wielkosc);
  vertex(-wielkosc, -wielkosc,  wielkosc);
  endShape();
  // Right
  beginShape(QUADS);
  fill(prawy);
  vertex( wielkosc, -wielkosc,  wielkosc);
  vertex( wielkosc, -wielkosc, -wielkosc);
  vertex( wielkosc,  wielkosc, -wielkosc);
  vertex( wielkosc,  wielkosc,  wielkosc);
  endShape();
  // Left
  beginShape(QUADS);
  fill(lewy);
  vertex(-wielkosc, -wielkosc, -wielkosc);
  vertex(-wielkosc, -wielkosc,  wielkosc);
  vertex(-wielkosc,  wielkosc,  wielkosc);
  vertex(-wielkosc,  wielkosc, -wielkosc);
  endShape(); 
    popMatrix();
   
  }

};