void setup()
{
  size(1280, 720, P3D);
  background(255);
  camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker perlinWalker = new Walker();
float tr = 0;
float tg = 0;
float tb = 0;

void draw()
{

  float r = map(noise(tr), 0, 1, 0, 255);
  float g = map(noise(tg), 0, 1, 0, 255);
  float b = map(noise(tb), 0, 1, 0, 255);
  fill(r, g, b, 255);
  noStroke();
    
  perlinWalker.render();
  perlinWalker.perlinWalk();
  
  tr += 0.1f;
  tg += 0.2f;
  tb += 0.3f;
  
}
