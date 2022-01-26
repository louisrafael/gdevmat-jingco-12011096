void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

int i = 0;

void draw()
{
  
  
  float gaussian = randomGaussian();
  float standardDeviation = 200;
  float mean = 0;
  float x = standardDeviation * gaussian + mean;
  
  // Scale/Thickness
  float gaussiann = randomGaussian();
  float standardDeviationn = 30;
  float meann = 0;
  float xx = standardDeviationn * gaussiann + meann;
  
  fill(random(0, 256), random(0, 256), random(0, 256), random(10, 101));
  noStroke();
 
  circle(x, random(-360, 361), xx);
  
  i++;
  if (i > 300)
  {
    i = 0;
    background(255);
  }
 
  
}
