Walker myWalker = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //myWalker.velocity = new PVector(5, 8);
  //myWalker.acceleration = new PVector(-0.01, 0.1);
  
}

/* Vector Motion 101
  1. Add velocity to position (update function)
  2. Draw the object at position (render function)
*/

void draw()
{
  background(80);
  
  myWalker.update();
  myWalker.render();
  myWalker.checkEdges();
  
}
