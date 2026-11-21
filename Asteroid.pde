class Asteroid extends Floater {
  private double rotationSpeed;
  
  public Asteroid() {
    corners = 8;
    
    xCorners = new int [corners];
    yCorners = new int [corners];
    
    //make the asteroids have a weird shape
    for(int i = 0; i < corners; i++){
      double angle = (2 * Math.PI * i) / corners;
      double radius = Math.random() * 15 + 20;
      
      xCorners[i] = (int)(Math.cos(angle) * radius);
      yCorners[i] = (int)(Math.sin(angle) * radius);
    }
    
    //pink
    myColor = color(250, 0 , 175);
  
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    
    myXspeed = Math.random() * 2 -1;
    myYspeed = Math.random() * 2 -1;
    
    myPointDirection = Math.random() * 360;
    
    //some clockwise some counterclockwise
    rotationSpeed = Math.random() * 4 - 2;
    
  }
  
  public void move() {
    super.move();
    turn(rotationSpeed);
  }
  
  public double getMyCenterX() {
    return myCenterX;
  }
  
  public double getMyCenterY() {
    return myCenterY;
  }

}//end of class
































