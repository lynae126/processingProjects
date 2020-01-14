public class Snake{
  int radius = 10, directionX = 3, directionY = 0;
  float x, y, speed=0.5;

  //color fillColor; //gives the snake its color
  
  public Snake(){
   x = width/2;
   y = height/2;

   //fillColor = color(255, 0, 0);
   //fill(255,0,0); //makes circle blue/purple  noStroke();
    ellipseMode(RADIUS);  
  }
  public void show(){
    ellipse (x, y, radius, radius);    // body
  }
}
