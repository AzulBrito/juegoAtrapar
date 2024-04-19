class Fruta{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public Fruta(){
    imagen = loadImage("fruta1.png");
  }
  
  public Fruta(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("fruta1.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,60,60);
  }
  
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
      this.posicion.x=random(width);
    }
    
  }
}
