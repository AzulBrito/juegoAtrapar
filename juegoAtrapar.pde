PImage fondo;
color colorear= color (190,130,50,150);
private Canasta canasta;

void setup(){
 size(600,400); 
 fondo= loadImage("fondo.jpg");
// canasta.setPosicion(new PVector(width/2,height/2));
}
void draw(){
  tint(colorear);
   image(fondo,0,0);
   canasta.dibujar();
}

public void keyPressed(){
  if(key=='d'){
    canasta.mover(1);
  }
  if(key=='a'){
    canasta.mover(0);
}
}
