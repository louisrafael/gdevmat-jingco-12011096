float time = 0.0;
float changeTime = 0.1;
float amplitude = 30.0;
float frequency = 1.0;

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
 background(128);
 drawCartesianPlane();
 drawLinearFunction();
 drawQuadraticFunction();
 drawSineWaveFunction();
 
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color black = color(0, 0, 0);
  fill(black);
  stroke(black);
  line(-300, 0, 300, 0);
  line(0, 300, 0, -300);
  
  for(int i = -300; i <= 300; i += 10)
  {
    line(i, 2, i, -2);
    line(2, i, -2, i);
  }
}

void drawLinearFunction()
{
  // f(x) = −5x + 30 (purple color)
  
  color purple = color(128, 0, 128);
  fill(purple);
  stroke(purple);
  noStroke();
  
   for(int x = -200; x <= 200; x++)
  {
    circle(x, (-5 * x) + 30, 5);
  }
}

void drawQuadraticFunction()
{
  // f(x) = x^2 − 15x − 3 (yellow color)
  
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  noStroke();
  
   for(float x = -300; x <= 300; x+=0.1f)
  {
    circle(x, (float)Math.pow(x, 2) - (15 * x) - 3, 5);
  }
}

void drawSineWaveFunction()
{
  
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  
  for (int x = -250; x < 250; x++)
  {
    circle(x, (float)Math.sin(frequency * time) * amplitude, 5);
    time += changeTime;
  }
  
}
