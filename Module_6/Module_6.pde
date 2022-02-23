Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  float massValue = 1;
  int posX = 0;
    for(int i = 0; i < 10; i++)
  {
    posX = 2 * (Window.windowWidth / 10) * (i - 5);
    walkers[i] = new Walker();
    walkers[i].mass = massValue;
    walkers[i].scale = massValue * 15;
    walkers[i].position = new PVector(posX, 200);
    massValue++;
  }
}

void draw()
{
  background(80); 
  noStroke();
  for (Walker w : walkers)
  { 
    
    // Friction = -1 * mew * N * v
    float mew = 0.1f; //coefficient of friction
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy(); // copy() copies the current velocity of our walker
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    w.applyForce(friction);
    
    PVector gravity = new PVector(0, -0.15 * w.mass);
    w.render();
    w.update();
    //w.applyForce(wind); NO WIND
    w.applyForce(gravity);
    
    
     if (w.position.x >= Window.right)
    {
      w.position.x = Window.right; //safeguard our position to not overflow toward the farther end of the edge
      w.velocity.x *= -1;
    }
    
     if (w.position.y <= Window.bottom)
    {
      w.position.y = Window.bottom;
      w.velocity.y *= -1;
    }
    
  }
  
}

/*
Gravity  on Earth
- the force of gravity is calculated relative to an object's mass
- the bigger the object, the stronger the force of gravity is.

Friction
- dissipateive force
  - energy decreases when in motion
  - F = -1uNv
  u = coeffieicnt of friction (the higher mew, the higher the friction)
  N = Normal Force (force perpendicular to the contact)
  v = velocity of the object (normalize to get its direction)
  
*/
