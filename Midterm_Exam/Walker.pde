class Walker
{

   PVector position = new PVector();
   PVector colors = new PVector();
   float scale =  random(0, 51);
  
  void prepare()
  {
    float gaussian = randomGaussian();
    float standardDeviation = 200;
    float mean = 0;
    position.x = gaussian * standardDeviation + mean;
    position.y = random(-Window.windowHeight, Window.windowHeight + 1);
    scale = random(0 , 51);
    colors.x = random(0, 256);
    colors.y = random(0, 256);
    colors.z = random(0, 256);  
  }
  
  void render()
  {
    fill(colors.x, colors.y, colors.z); noStroke();
    circle(position.x, position.y, scale); 
  }
  
}
