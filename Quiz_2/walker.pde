class Walker
{
  float x;
  float y;
  
  void render()
  {
    fill(int(random(0, 256)),  int(random(0, 256)),  int(random(0, 256)), int(random(50, 101)));
    noStroke();
    
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      y += 10; // UP
    }
    else if (rng == 1)
    {
      y -= 10; // DOWN
    }
    else if (rng == 2)
    {
      x += 10; // RIGHT
    }
    else if (rng == 3)
    {
      x -= 10; // LEFT
    }
    else if (rng == 4)
    {
      y += 10; // UP RIGHT
      x += 10;
    }
    else if (rng == 5)
    {
      y -= 10; // DOWN RIGHT
      x += 10;
    }
    else if (rng == 6)
    {
      y += 10;
      x -= 10; // UP LEFT
    }
    else if (rng == 7
    {
      y -= 10;
      x -= 10; // DOWN LEFT
    }
    
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(1, 101));
    
    if  (rng >= 61 && rng <= 80)
    {
      y += 10; // 20% UP
    }
    else if (rng >= 81 && rng <= 100)
    {
      y -= 10; // 20% DOWN
    }
    else if (rng >= 1 && rng <= 40)
    {
      x += 10; // 40% RIGHT
    }
    else if  (rng >= 41 && rng <= 60)
    {
      x -= 10; // 20% LEFT
    }
  }
  
}
