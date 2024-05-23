int SizeofSmallest = 30;
boolean toggle = false;
public void setup()
{
  size(990, 990);
}
public void draw()
{
  background(0);
  sierpinski(0 + SizeofSmallest/2, height - SizeofSmallest, width);
  if (toggle == false) {
    if (SizeofSmallest >= 2) {
      SizeofSmallest -= 5;
    } else if (SizeofSmallest <= 2) {
      toggle = true;
    }
  } else if (SizeofSmallest <= 1000) {
    SizeofSmallest += 5;
  } else if (SizeofSmallest >= 1000) {
    toggle = false;
  }
}

public void mouseDragged()//optional
{
  SizeofSmallest += 10;
}
public void sierpinski(int x, int y, int len)
{
  if (len <= SizeofSmallest) {
    triangle(x, y, x - len/2, y + len, x + len/2, y + len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
