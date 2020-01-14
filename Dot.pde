public class Dot{  
  float x;
  float y;
  float size;
  public Dot(){
    x = random(80, width);
    y = random(25, height);
    size = 15;
  }
  
  public void show(){
   circle(x, y, size); 
  }  
}
