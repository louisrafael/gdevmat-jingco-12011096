void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(0);
}

void draw()
{
  float gaussian = randomGaussian();
  println(gaussian);
  
  float standardDeviation = 100; // how scattered/spread out the values are
  float mean = 0; // where the most values(circles) are being displayed
  
  float x = standardDeviation * gaussian + mean;
  noStroke();
  
  fill(255, 10); // second value is the opacity
  circle(x, 0, 30);
}


/*
Normal Distrbution of Numbers
- Carl Friedrich Gauss
- mean (average of a set of numbers) and standard deviation
* sum of all numbers / n
- range = highest value - lowest value
- variance is the expectation of the square deviation of a random variable from its mean
* Σ(x  - mean)^2 / n
- standard deviation is the square root of variance
*/
