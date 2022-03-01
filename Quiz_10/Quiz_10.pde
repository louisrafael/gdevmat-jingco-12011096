Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.1, 0);


void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  int posX = 0;
  for (int i = 0; i < 10; i++)
  {
    posX = 2 * (Window.windowWidth / 10) * (i - 5);
    walkers[i] = new Walker();
    walkers[i].position = new PVector(posX + 60, 300);
    walkers[i].scale = walkers[i].mass * 10;
  }
}

void draw()
{
  background(255);
   
  ocean.render();
  for (Walker w : walkers)
  {
    w.render();
    w.update();
    
    PVector gravity = new PVector(0, -0.15f * w.mass); 
    w.applyForce(wind); 
    w.applyForce(gravity); 
    
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = w.velocity.copy();
    w.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude)); 
  
    if (w.position.y <= Window.bottom)
    {
      w.position.y = Window.bottom;
      w.velocity.y *= -1;
    } 
  
    if (ocean.isCollidingWith(w))
    {
      PVector dragForce = ocean.calculateDragForce(w);
      w.applyForce(dragForce);
    }
    
     if (w.position.x >= Window.right)
    {
      w.position.x = Window.right;
      w.velocity.x *= -1;
    } 
  }
  
}
