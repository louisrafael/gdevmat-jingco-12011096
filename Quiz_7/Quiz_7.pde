Walker[] walkers = new Walker[100];

PVector mousePos()
{
  float x = mouseX - Window.windowWidth;
  float y = -(mouseY - Window.windowHeight);
  return new PVector(x, y);
}

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < 100; i++)
  {   
    walkers[i] = new Walker();
    walkers[i].acceleration = new PVector(-0.01, 0.1);
  }
}

void draw()
{
   background(80);
   
   PVector cursor = mousePos();
   
   for (int i = 0; i < 100; i++)
  { 
    PVector direction = PVector.sub(cursor, walkers[i].position);
    walkers[i].acceleration = direction.normalize();
    
    walkers[i].update();
    walkers[i].render();
  }
  
  
}
