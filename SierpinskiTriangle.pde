public void setup()
{
  size(160, 200);
}
public void draw()
{
  sierpinski(0, 200, 160);
}

public void sierpinski(int x, int y, int len) 
{
  if(len == 20)
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),255);
    triangle(x, y, x+20, y, x+10, y-20);
  }
  else 
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
