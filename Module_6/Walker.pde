public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 0;
  public PVector rgb = new PVector( random(0, 256),  random(0, 256),  random(0, 256));
  
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
    fill(rgb.x, rgb.y, rgb.z);
    circle(position.x, position.y, scale);
  }
  
}
