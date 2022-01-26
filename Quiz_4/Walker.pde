class Walker
{
  float x;
  float y;
  float tx = 0, ty = 10000;
  float ts = 0;
  
  void render()
  {  
    circle(x, y, map(noise(ts), 0, 1, 5, 150));
    
    ts += 0.01f;
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
   
    tx += 0.01f;
    ty += 0.01f;
  }
}
