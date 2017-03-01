class MalaKostka
{
  int rotacjaX,rotacjaY,rotacjaZ,wielkosc;
  MalaKostka(int duzosc)
  {
   wielkosc=duzosc;
  }
  Kordy kordy,startowekordy;
   void Stworz(Kordy kordy)
  {

  pushMatrix();
  
  translate(kordy.x,kordy.y,kordy.z);
rotateX(radians(rotacjaX));
  rotateY(radians(rotacjaY));
  rotateZ(radians(rotacjaZ));
    beginShape(QUADS);
  fill(255,0,0);
  vertex(-wielkosc, -wielkosc,  wielkosc);
  vertex( wielkosc, -wielkosc,  wielkosc);
  vertex( wielkosc,  wielkosc,  wielkosc);
  vertex(-wielkosc,  wielkosc,  wielkosc);
  endShape();
  // Back
  beginShape(QUADS);
  fill(255,128,0);
  vertex( wielkosc, -wielkosc, -wielkosc);
  vertex(-wielkosc, -wielkosc, -wielkosc);
  vertex(-wielkosc,  wielkosc, -wielkosc);
  vertex( wielkosc,  wielkosc, -wielkosc);
  endShape();
  // Bottom
  beginShape(QUADS);
  fill(0,255,0);
  vertex(-wielkosc,  wielkosc,  wielkosc);
  vertex( wielkosc,  wielkosc,  wielkosc);
  vertex( wielkosc,  wielkosc, -wielkosc);
  vertex(-wielkosc,  wielkosc, -wielkosc);
  endShape();
  // Top
  beginShape(QUADS);
  fill(255,255,0);
  vertex(-wielkosc, -wielkosc, -wielkosc);
  vertex( wielkosc, -wielkosc, -wielkosc);
  vertex( wielkosc, -wielkosc,  wielkosc);
  vertex(-wielkosc, -wielkosc,  wielkosc);
  endShape();
  // Right
  beginShape(QUADS);
  fill(255,255,255);
  vertex( wielkosc, -wielkosc,  wielkosc);
  vertex( wielkosc, -wielkosc, -wielkosc);
  vertex( wielkosc,  wielkosc, -wielkosc);
  vertex( wielkosc,  wielkosc,  wielkosc);
  endShape();
  // Left
  beginShape(QUADS);
  fill(0,128,128);
  vertex(-wielkosc, -wielkosc, -wielkosc);
  vertex(-wielkosc, -wielkosc,  wielkosc);
  vertex(-wielkosc,  wielkosc,  wielkosc);
  vertex(-wielkosc,  wielkosc, -wielkosc);
  endShape(); 
    popMatrix();
   
  }
};