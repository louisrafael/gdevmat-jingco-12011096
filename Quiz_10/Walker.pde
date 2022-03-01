public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = random(5, 15);
  
  public float r = random(0, 256), g = random(0, 256), b = random(0, 256);
  
  public Walker()
  {
    
  }
  
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass); 
    this.acceleration.add(f);
  }
  
  public void update()
  {
    this.velocity.add(this.acceleration);
    velocity.limit(velocityLimit); 
    this.position.add(this.velocity);
    this.acceleration.mult(0);
  }
  
  public void render()
  {
    fill(r, g, b);
    circle(position.x, position.y, scale);
  }
  
}
