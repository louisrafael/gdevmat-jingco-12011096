public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000; // for our noise to have different starting points
  
  void render()
  {
    circle(x, y, 5);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
  }
}
