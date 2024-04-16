PImage fondo;
color colorear= color (190,130,50,150);
private Canasta canasta;

void setup(){
  size(368,207); 
   fondo= loadImage("fondo.jpg");
   fondo.resize(736, 414);
 
  canasta=new Canasta();
 
  canasta.setPosicion(new PVector(width/2,190));
  canasta.setVelocidad(new PVector(1,1));
}

void draw(){
  background(300);
  tint(colorear);
  image(fondo,0,0);
  canasta.dibujar();
  movimiento();
}

public void movimiento(){
  if(mouseButton == RIGHT){
    canasta.mover(1);
  }
 if(mouseButton== LEFT){
    canasta.mover(0);
}
}
