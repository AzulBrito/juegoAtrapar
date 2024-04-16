class Canasta{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  //constructor
  public Canasta(){
  imagen= loadImage("cesta.png");
  }
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,30,30);
  }
  
  public void mover(int direccion){
        if(direccion==0){
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x+=this.velocidad.x;
  }
}
 public PVector getPosicion(){
   return this.posicion;
  }
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
   public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
