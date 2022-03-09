Walker[] walkers = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  for (int i = 0; i < 10; i++)
  {
    walkers[i] = new Walker();
    walkers[i].mass = random(1, 11);
    walkers[i].scale = walkers[i].mass * 10;
    walkers[i].position = new PVector (random(-Window.windowWidth, Window.windowWidth), random(-Window.windowHeight, Window.windowHeight));
  }
}

void draw()
{
  background(255);
  
  for (int i = 0; i < 10; i++)
  {
    walkers[i].update();
    walkers[i].render();
      
    for (int j = 0; j < 10; j++)
    {
      
      if (i != j)
      {
        walkers[i].applyForce(walkers[j].calculateAttraction(walkers[i]));
        walkers[j].applyForce(walkers[i].calculateAttraction(walkers[j]));
      }
    }
    
  }
  
  
}
