float vector[]= new float[10];
int menor, actual;
float a=0;
public void settings() {
  //fullScreen();
  size(500, 500, P3D);

  inicializar();
}
void draw() {

  menor=actual; 
  for (int i=actual; i<vector.length; i++)
  {
    if (vector[menor]<vector[i])
    {
      menor=i;
    }
  }
  //intercambio 
 
  float aux=vector[menor];
  vector[menor]=vector[actual];
  vector[actual]=aux;
  actual++;
  mostrar();
   if (actual==vector.length) noLoop();
}
void mostrar() {
  background(255);
  for (int i=0; i<vector.length; i++) {
    
//     _____-
//Figura que se proyectara
pushMatrix();
    strokeWeight(3);
    stroke(random(255), random(255), random(255));
    translate(map(i, 0, vector.length, width/vector.length, width), height/2); //Posicion de box
    rotateX(a);
    rotateY(a);
    rotateZ(a);
     a=a+0.05;
    noFill();
    box(vector[i]);
    popMatrix();

//     _____
  
}
}
void inicializar() {
  actual=0;
  menor=0;
  for (int i=0; i<vector.length; i++) {
    vector[i]=random(height/4); //Tamaño de box
  }
}
void mousePressed(){
inicializar();
loop();

}
