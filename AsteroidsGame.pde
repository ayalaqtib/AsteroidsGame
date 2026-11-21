//your variable declarations here
Spaceship myShip;
Star [] stars;
ArrayList<Asteroid> asteroids;
public void setup() 
{
  //your code here
  size(800,600);
  myShip = new Spaceship();
  
  stars = new Star[200];
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
  asteroids = new ArrayList<Asteroid>();
  
  //creating 10 asteroids
  for(int i = 0; i < 10; i++){
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);
  
  //stars
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  
  //asteroids
  for(int i = asteroids.size()-1; i >= 0; i-- ){
    Asteroid a = asteroids.get(i);
    
    float distance = dist((float)myShip.myCenterX,(float)myShip.myCenterY, (float)a.getMyCenterX(), (float)a.getMyCenterY());
    
    if(distance < 20) {
      asteroids.remove(i);
    }
    else {
      a.show();
      a.move();
    }
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
