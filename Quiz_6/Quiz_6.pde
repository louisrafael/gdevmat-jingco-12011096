void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x, y);
}

PVector ratPos()
{
  float x = -(mouseX - Window.windowWidth);
  float y = (mouseY - Window.windowHeight);
  return new PVector(x, y);
}

void draw()
{
  background(128);
  
  PVector mouse = mousePos();
  PVector rat = ratPos();
  
  // RED (SABER ONE)
  drawLine(255, 0, 0,  15,  500,  mouse);  
  // WHITE
  drawLine(255, 255, 255,  5,  500,  mouse); 
  
  // RED (SABER TWO)
  drawLine(255, 0, 0,  15,  625,  rat);  
  // WHITE
  drawLine(255, 255, 255,  5,  625,  rat); 
  
  // BLACK (HANDLE)
  drawLine(128, 128, 128,  15, 125,  rat);
  drawLine(0, 0, 0,  10,  125,  rat);
  
  
  println(rat.mag());
}

void drawLine(int r, int g, int b, int thickness, int size, PVector vector)
{
  stroke(r, g, b);
  strokeWeight(thickness); 
  vector.normalize().mult(size);
  line(0, 0, vector.x, vector.y);
}
