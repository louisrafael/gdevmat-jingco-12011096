// two key function when processing :

void setup() // gets called at the very first frame
{ 
  
  // set window size using the size function (1280 x 720)
  // P3D variable makes our environment 3D, if P3D is absent our environment will be 2D
  size(1280, 720, P3D); 
  
  // by default the origin / 0,0 / x,y is at the lower left corner in processing
  // to fix this, set camera position, positions our camera to the middle of the window.
  camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

/*
Point 
- a position in space (x, y) 
- has no length or width 
- point is demonstrated with a circle 
- origin is in the middle of the space

Line
- collection of infinite points from point A to B
*/

void draw() // gets called at every frame // basically our void main 
{
  // set background color of the window using background function
  // range is 0 - 255, black background is 0, white background is 255
  background(0); 
  
  //// search "processing circle function" (x, y, size)
  //circle(0, 0, 15); // draws a circle at x,y with thickness
  
  //// by default the line's thickness is 1 pixel and color is black
  //strokeWeight(2); // changes the thickness of the line below it
  //color white = color(255, 255, 255); // declare a color variable (RGB)
  //fill(white); // fills the line with the color selected
  //stroke(white); // all strokes will be with the color selected
  //line(-75, -75, 75,75 ); // draws a line x1, y1, x2, y2
  
 drawCartesianPlane();
 drawLinearFunction();
 drawQuadraticFunction();
 drawCircle();
 
}

void drawCartesianPlane()
{
  // Cartesian Plane
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
}

void drawLinearFunction()
{
  /* Linear Functions (draws straight lines)
  f(x) = x + 2
  Let x be 4, then y  = 6 (4,6);
  Let x be -5, then y = -3 (-5,-3)
  */
  
  color red = color(255, 0, 0);
  fill(red);
  stroke(red);
  noStroke(); // we won't have an outer lining of black
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x + 2, 5);
  }
}

void drawQuadraticFunction()
{
  /* Quadratric Function (draws a parabola)
  f(x) = x^2 + 2x - 5
  Let x be 2, then y  = 3
  Let x be -1, then y = -6
  */
  
  color green = color(0, 255, 0);
  fill(green);
  stroke(green);
  noStroke(); // we won't have an outer lining of black
  
  for (float x = -300; x <= 300; x+=0.1f)
  {
    circle(x * 10, (x*x) + (2*x) - 5, 5);
    // or y = (float)Math.pow(x, 2) + (2 * x) - 5
    // for exponents use = Math.pow(number, exponent)
    // expand the length by modifying x (Ex: x * 10)
  }
}

void drawCircle()
{
   /*
   Circle
   - radius
   - cos = x
   - sin = y
   */
  
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for (int x = 0; x <=360; x++)
  {
    circle((float)Math.cos(x) * radius,(float)Math.sin(x) * radius, 5);
  }
  
}
