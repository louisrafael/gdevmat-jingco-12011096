Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  float massValue = 1;
  
    for(int i = 0; i < 10; i++)
  {
    walkers[i] = new Walker();
    walkers[i].mass = massValue;
    walkers[i].scale = massValue * 15;
    walkers[i].position = new PVector(-500, 200);
    massValue++;
  }
}

void draw()
{
  background(80); 
  
  for(int i = 0; i < 10; i++)
  { 
    walkers[i].render();
    walkers[i].update();
    walkers[i].applyForce(wind);
    walkers[i].applyForce(gravity);
    
     if (walkers[i].position.y <= Window.bottom)
    {
      walkers[i].velocity.y *= -1;
    }
    
    if (walkers[i].position.y >= Window.top)
    {
      walkers[i].velocity.y *= 1;
    }
    
    if (walkers[i].position.x <= Window.left)
    {
      walkers[i].velocity.x *= 1;
    }
    
    if (walkers[i].position.x >= Window.right)
    {
      walkers[i].velocity.x *= -1;
    }
    
  }
  
}
