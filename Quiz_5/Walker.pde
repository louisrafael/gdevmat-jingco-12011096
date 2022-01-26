class Walker
{
  PVector position = new PVector(); // position x and y
  PVector speed = new PVector(5, 8);
  
  void render()
  {
    circle(position.x, position.y, 30);
  }
  
  void vectorWalk()
  {
    int rng = int(random(4));
    
    if (rng == 0)
    {
      position.y += speed.y;
    }
    else if (rng == 1)
    {
      position.y -= speed.y;
    }
    else if (rng == 2)
    {
      position.x += speed.x;
    }
    else if (rng == 3)
    {
      position.x -= speed.x;
    }
  }
  
  void moveAndBounce()
  {
    background(255);
    
    position.add(speed);
    
    if (position.x > Window.right || position.x < Window.left)
    {
      speed.x *= -1;
    }
    
     if (position.y > Window.top || position.y < Window.bottom)
    {
      speed.y *= -1;
    }
    
    fill(182, 52, 100);
  }
  
}
