int sizeX = 0;

public void setup()
{
  size(400, 400);
  background(0);
}
public void draw()
{
  background(0);
  sierpinski(0, 400, sizeX);
  sierpinskiUp(-200, 0, sizeX);
  sierpinskiInv(600, 0, sizeX);
}
public void mouseDragged()//optional
{
  sizeX = mouseX;
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

void sierpinskiUp(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x+len, y, x+len/2, y+len);
  } else {
    sierpinskiUp(x, y, len/2);
    sierpinskiUp(x+len/2, y, len/2);
    sierpinskiUp(x+len/4, y+len/2, len/2);
  }
}

void sierpinskiInv(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x-len, y, x-len/2, y+len); // Flip x left & y down
  } else {
    sierpinskiInv(x, y, len/2);
    sierpinskiInv(x-len/2, y, len/2);
    sierpinskiInv(x-len/4, y+len/2, len/2); // Adjusted for downward reflection
  }
}
