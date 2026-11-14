//your variable declarations here
Spaceship myShip;
Star [] stars;
public void setup() 
{
  //your code here
  size(800,600);
  myShip = new Spaceship();
  
  stars = new Star[200];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  
  myShip.show();
  myShip.move();
  

}

public void keyPressed() {
  if (keyCode == LEFT) {
    myShip.turn(-10);
  }
  
  if(keyCode == RIGHT) {
    myShip.turn(10);
  }

  if(keyCode == UP) {
    myShip.accelerate(0.5);
  }
  
  if(keyCode == DOWN) {
    myShip.accelerate(-0.5);
  }
  
  if(key == ' '){
    myShip.myXspeed = 0;
    myShip.myYspeed = 0;
    
    myShip.myCenterX = Math.random() * width;
    myShip.myCenterY = Math.random() * height;
    
    myShip.myPointDirection = Math.random() * 360;
  }
}























