Walker matter = new Walker();
Walker[] walkers = new Walker[100];

void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < 100; i++)
  {
    walkers[i] = new Walker();
    walkers[i].prepare();
  }
  
}

PVector mousePos()
{
  float x = mouseX -Window.windowWidth;
  float y = -(mouseY - Window.windowHeight); 
  return new PVector(x, y);
}

void draw()
{
   background(0);
   
  // BLACK HOLE 
  PVector blackHole = mousePos();
  
  // OTHER MATTER
  for (int i = 0; i < 100; i++)
  {
    walkers[i].render();
    PVector direction = PVector.sub(blackHole, walkers[i].position);
    walkers[i].position.add(direction.normalize());
  }
  
  fill(255); noStroke();
  circle(blackHole.x, blackHole.y, 50);
}
