PImage fondo;
color colorear= color (190,130,50,150);
private Canasta canasta;
private Fruta frutas;
private Hamnster hamnster;


void setup(){
  size(368,260); 
   fondo= loadImage("fondo.jpg");
   fondo.resize(736, 414);
   
   frutas = new Fruta(new PVector(random(width),0),new PVector(0,10));
   canasta=new Canasta();
   hamnster = new Hamnster();
   
  canasta.setPosicion(new PVector(width/2,190));
  canasta.setVelocidad(new PVector(1,1));

}

void draw(){
  background(300);
  tint(colorear);
  image(fondo,0,0);
  noTint();
  dibujarPiso();
  canasta.dibujar();
  movimiento();
  frutas.dibujar();
  frutas.mover();
  hamnster.dibujar();
  hamnster.mover();
  
}

public void movimiento(){
  if(mouseButton == RIGHT){
    canasta.mover(1);
  }
 if(mouseButton== LEFT){
    canasta.mover(0);
}
}

void dibujarPiso(){
  
  int bloqueWidth = 10; 
  int bloqueHeight = 15; 
  int gap = 2; 

  int inicioY = height - bloqueHeight * 4;
  for (int i = 3; i >= 0; i--) {
  int y = inicioY + i * bloqueHeight;
  for (int j = 0; j < width / (bloqueWidth * 2 + gap); j++) {
    int x = j * (bloqueWidth * 2+ gap) + (i % 2) * (bloqueWidth + gap);
    fill(#A24F02);
    rect(x, y, bloqueWidth, bloqueHeight);
    rect(x + bloqueWidth + gap, y, bloqueWidth, bloqueHeight);
  }
 }
}
