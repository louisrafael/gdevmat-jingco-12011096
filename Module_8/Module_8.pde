Walker bigMatter = new Walker();
Walker smallMatter = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
  
  bigMatter.position = new PVector();
  bigMatter.mass = 20;
  bigMatter.scale = bigMatter.mass * 10;
  
  smallMatter.position = new PVector(150, 150);
  smallMatter.mass = 10;
  smallMatter.scale = smallMatter.mass * 10;
}

void draw()
{
  background(255);
   
   bigMatter.update();
   bigMatter.render();
      
   smallMatter.update();
   smallMatter.render();
   
   smallMatter.applyForce(bigMatter.calculateAttraction(smallMatter)); 
   bigMatter.applyForce(smallMatter.calculateAttraction(bigMatter));
}

/*
Gravitational Attraction
- All gravitational attractions happen between all objects that have mass (theoretically)
F = (G * m1 * m2 / r^2) * r
F = gravitational force
G = universal gravitational constant (real world = 6.67428 x10^-11)
(in processing, assuming that it will be a constant 1)
m1, m2 = objects' masses
r = direction from m1 to m2 (normalize) 
r^2 = distance between the two objects

*/
