PImage fondo;
color colorear= color (190,130,50,150);
void setup(){
 size(600,400); 
 fondo= loadImage("fondo.jpg");
}
void draw(){
  tint(colorear);
   image(fondo,0,0);
}
