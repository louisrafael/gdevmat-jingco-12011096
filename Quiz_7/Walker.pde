class Walker
{
  public PVector position = new PVector(random(-640, 641), random(-360, 361));
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale =  random(51);
 
  public void update()
  {
    acceleration.mult(0.2);
    velocity.add(acceleration);
    velocity.limit(velocityLimit);
    position.add(velocity);
  }
  
  public void render()
  {
    circle(position.x, position.y, scale);
  }
}
