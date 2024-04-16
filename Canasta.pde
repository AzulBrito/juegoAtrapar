class Canasta{
  private PVector posicion;
  private PImage canasta;
  
  public Canasta(){
  canasta= loadImage("canasta.png");
  }
  public void dubujar(){
   imageMode(CENTER);
   image(canasta,posicion.x, posicion.y, 150,150);
  }
  public void setMover(){
    
  }
}
