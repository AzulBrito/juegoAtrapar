class Hamnster{
   private PImage imagen;
   private PVector velocidad;
   private PVector posicion;
   
    public Hamnster(){
    imagen = loadImage("hamnster.png");
    posicion = new PVector(width / 2, height / 2); 
    velocidad = new PVector(random(-2, 2), random(-2, 2));
  }
  
   public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,60,60);
  }
  public void mover() {

    posicion.add(velocidad);

   
    if (posicion.x > width - 30 || posicion.x < 30) { 
      velocidad.x *= -1;
    }
    if (posicion.y > height - 30 || posicion.y < 30) { 
      velocidad.y *= -1; 
    }
  }
  
}
