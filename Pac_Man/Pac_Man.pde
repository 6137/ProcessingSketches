Pacman pac; 
Ghost ghost;

int direction = 56;

void setup(){
pac = new Pacman(400,400,50,50);
ghost = new Ghost(300,400,50,50);

size(800,800);

}


void draw(){
  println(pac.xpos);
  
background(0,0,0);
pac.photo();
ghost.spawn();
if(direction == 1){
 pac.ypos +=1; 
}
else if(direction == 0){
  //no habla espanol
pac.ypos -=1;  
}
else if(direction == 2){
  pac.xpos +=1;
}
else if(direction == 3){
  pac.xpos -=1;
}
  
  
  
  
  
  
  
  


}

void keyPressed(){
if (key == CODED) {
    if (keyCode == UP) {
      direction = 0;
    } else if (keyCode == DOWN) {
     direction = 1;
     
    } else if(keyCode == RIGHT){
    direction = 2;
    } else if(keyCode == LEFT){
    direction = 3;
    
    }
  } 

}
public class Pacman{
  int xpos;
  int ypos;
  int width;
  int height;
  PImage photo;
 public Pacman(int xpos, int ypos, int width, int height){
   this.xpos =  xpos;
   this.ypos =  ypos;
   this.width =  width;
   this.height = height;
   }
  
  public void photo() {

  photo = loadImage("pac.png");
  image(photo, xpos, ypos);
  if (xpos>759) {
   xpos=759; 
  }
   if (xpos<0) {
   xpos=0; 
  }
   if (ypos<00) {
   ypos=00; 
  }
   if (ypos>759) {
   ypos=759; 
  }
  }
}


public class Ghost{
  int xPos;
  int yPos;
  int width ;
  int height ;
  PImage photo;
  
public Ghost(int xPos, int yPos, int width, int height){
this.xPos = xPos;
this.yPos = yPos;
this.width = width;
this.height = height;
}

public void spawn(){
  photo = loadImage("ghost.png");
  image(photo, xPos, yPos);
  
  if (xPos>800) {
    
   xPos=780;
  }
}

}







  



