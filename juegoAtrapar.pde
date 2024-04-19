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
