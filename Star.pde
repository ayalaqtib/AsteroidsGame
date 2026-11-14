class Star //note that this class does NOT extend Floater
{
  //your code here
  private float x;
  private float y;
  private float starSize;
  
  public Star() {
    x = (float)(Math.random()*width);
    y = (float)(Math.random()*height);
    starSize = (float)(Math.random()*3 + 1);
  
  }
  
  public void show() {
    noStroke();
    fill(255);
    ellipse(x, y, starSize, starSize);
  }
}
