Walker[] walkers = new Walker[8];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  int mass = 1;
  int posY = 0;
    for(int i = 0; i < 8; i++)
  {
    posY = 2 * (Window.windowHeight / 8)  * (i - (8 / 2));
    walkers[i] = new Walker();
    walkers[i].rgb.x = random(0, 256);
    walkers[i].rgb.y = random(0, 256);
    walkers[i].rgb.z = random(0, 256);
    walkers[i].mass = mass;
    walkers[i].scale = mass * 15;
    walkers[i].position = new PVector(-480, posY);
    mass++;
  }
}

void draw()
{
  background(255); 
  
  strokeWeight(2);
  fill(0);
  stroke(0);
  line(0, Window.windowHeight, 0, -Window.windowHeight);
    
    for (Walker w : walkers)
  { 
    PVector acceleration = new PVector(0.2, 0);
    w.applyForce(acceleration);
    
    float mew = 0.01f; 
    if (w.position.x > 0)
    {
      mew = 0.4f;
    }
    
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    w.applyForce(friction);
    
    w.render();
    w.update();
  }
}

void mouseClicked()
{
  int posY = 0;
    for(int i = 0; i < 8; i++)
  {
   posY = 2 * (Window.windowHeight / 8)  * (i - (8 / 2));
   walkers[i].rgb.x = random(0, 256);
   walkers[i].rgb.y = random(0, 256);
   walkers[i].rgb.z = random(0, 256);
   walkers[i].position = new PVector(-480, posY);
  }
}
