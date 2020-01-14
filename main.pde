//float dotx= random(0, 500);
//float doty= random(0, 500);
int diameter = 20;
Dot food;
int tail=10;
Snake s;
int counter = 0;
int speed = 0;
boolean run = true;
boolean play = false;
int score = 0;

//sets up the screen, background, objects, ...
void setup(){
 
  
  
  size(500, 500); 
  smooth(); //makes 'graphics' smooth
  background(0);
  noStroke();
  food = new Dot();
  s = new Snake();
  

  
}

void draw(){
  
      
     fill(0,tail);
     rect(80,0, width, height);
     rect(0,25, width, height);
     fill(0);
     rect(0,0, 80, 25);
     fill(255);
     textSize(15);
     text("Points: " + counter, 20, 20);
     float r = 255;
     float g = 255;
     float b = 255;
     r = map(s.x, 0, width, 0, 255);
     g = map(s.y, 0, width, 0, 255);
     fill(r,g,b);
    food.show();
    s.show();
    if(sqrt(pow((s.x-food.x),2)+ pow((s.y-food.y),2)) <= ( 10 + food.size/2 )){
      speed +=1;
      counter +=1;
      
      
      food.x = random(0, width);
      food.y = random(0, height);
      
      
    }
    
    
    
    
    
    // changing Position
    
    s.x=s.x+s.speed*s.directionX;
    s.y=s.y+s.speed*s.directionY; 
    
    
    
    
    // check boundaries
   
    if ((s.x>width-s.radius) || (s.x<s.radius)){   
     s.directionX = 0;
     s.directionY = 0;
     fill(255);
     textSize(15);
     text("High Score: " + score , 20, 40);
     text("Game Over ", 20, 60);
     text("Click P to play again ", 20, 80);
     run = false;
     play = true;
     if ( score<counter){
       score = counter;
     }
       
    }
    if ((s.y>height-s.radius) || (s.y<s.radius)){   
     s.directionY = 0;
     s.directionX = 0;
     fill(255);
     textSize(15);
     text("High Score: " + score , 20, 40);
     text("Game Over", 20, 60);
     text("Click P to play again ", 20, 80);
     if ( score<counter){
       score = counter;
     }

     run = false;
     play = true;
    } 
    
   
    
   
 

}


void keyPressed(){
  
  
  if(play == true){
        if (keyPressed){
              if (key == 'p'){

                  run = true;
                  counter = 0;
                  s.x = width/2;
                  s.y = height/2;
                  s.directionX = 3;
                  s.directionY = 0;
                  speed = 0;
                  play = false;
                  s.x=s.x+s.speed*s.directionX;
                  s.y=s.y+s.speed*s.directionY; 
                    
                }
              
            }
  }
                
    

 if (key == CODED){
    
     
     
      if(run == true){
        if (keyCode == LEFT){
          s.directionX=-3 -speed;
          s.directionY=0;
        }
        else if (keyCode == RIGHT){
          s.directionX=3 +speed;
          s.directionY=0;
        }
        else if (keyCode == UP){
          s.directionY=-3 - speed;
          s.directionX=0;
        }
        else if (keyCode == DOWN){
          s.directionY=3 + speed;
          s.directionX=0;
        }
    }
  } 
}
