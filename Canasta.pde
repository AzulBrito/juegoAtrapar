class Canasta{
  private PVector posicion;
  private PImage canasta;
  private PVector velocidad;
  
  //constructor
  public Canasta(){
  canasta= loadImage("cesta.png");
  }
  public void dibujar(){
   imageMode(CENTER);
   image(canasta,posicion.x, posicion.y, 150,150);
  }
  
  public void mover(int direccion){
        if(direccion==0){
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x+=this.velocidad.x;
  }
}
}
