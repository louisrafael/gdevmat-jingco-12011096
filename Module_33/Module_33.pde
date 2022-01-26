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

void draw()
{
  background(130);
  
  println(mousePos().x + " " + mousePos().y);
  
  strokeWeight(5);
  stroke(255, 0, 0);
  
  PVector mouse = mousePos();
  
  //mouse.mult(2); 
  mouse.normalize().mult(500); // normalized then applied a scalar to have a fixed size.
  line(0, 0, mouse.x, mouse.y);
  
  println(mouse.mag());
}

/*
Vector
* Multiplication && Division
- PVector.mult(scalar) && PVector.div(scalar)
- vector(an entity that has both magnitude and direction) * scalar(an entity that only has magnitude)
- EX: x(3, 4) * 2  // using pythagoran theorem(c^2 = a^2 + b^2), c = 5
* In processing, use PVector.mag() to compute for the length of your vector

Normalization
- process of making something standard or normal
* To Normalize a Vector
- therefore is to take a vector of any length and keeping it pointing at the same direction but changing its length to one
- x = (vector's side) / (absolute value of its length)
- 3/5, 4/5, 5/5 (All of that will be equal to 1 but we still keep the direction of our vector)
- PVector.normalize() 
- Normalizing a vector is helpful to get the direction 

*/
