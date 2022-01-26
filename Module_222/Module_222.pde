void setup()
{
  size(1280, 720, P3D);
  background(255);
  camera(0, 0, -(height/2.0) /  tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
   
}

//float t = 0;
Walker perlinWalker = new Walker();

void draw()
{
  fill(0);
  noStroke();
  perlinWalker.render();
  perlinWalker.perlinWalk();
  
  //float random = noise(t);
  // - needs a dynamic variable that changes overtime (t) for it to work
  
  //println(random);
  //t += 0.01f;
  // - generates a value from limited to 0 - 1
  // - so we're going to map the values into a bigger one
  
  // Generating One Dimensional Noise
  //float n = noise(t);
  //float x = map(n, 0, 1, 0, 360);
  // - map( value(n), current min(0), current max(1), new min(0), new max(360) )
  //rect(-640 + (t * 100), -360, 1, x); 
    
  //t += 0.01f;
}

/*
Perlin Noise 
- a more organic or natural way of generating random numbers
- does not drastically go up and down
- considers its previous value in generating the next value

*/
