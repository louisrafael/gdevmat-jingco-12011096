 void setup()
 {
   size(1280, 720, P3D);
   camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
 }
 
PVector position = new PVector(); // default is (0,0) // has x and y
PVector speed = new PVector(5, 8); // values for x and y
 
 
 void draw()
 {
   // flush the screen with white background
   background(255);
   
   // add speed to the current position
     //position.x += speed.x;
     //position.y += speed.y;
   // vector have a built in function for addition
   position.add(speed);
   
   // conditions for bouncing
   if ((position.x > Window.right) || (position.x < Window.left))
   {
     speed.x *= -1;
   }
   
   if ((position.y > Window.top) || (position.y < Window.bottom))
   {
     speed.y *= -1;
   }
   
   // render the circle
   fill(182, 52, 100);
   circle(position.x, position.y, 50);
 }
 
 
 /*
 Euclidean Vectors
 - defined as an entity with both magnitude(length) and direction(towards where our vector is facing)
 
 Vector Operations
 * addition
 - adds 2 vectors (the x's and y's
 - PVector.add(PVector)
 * subtraction
 - subtracts 2 vectors
 - PVector.sub(PVector)
 */
