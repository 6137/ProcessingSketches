  PImage creeper;      
void setup(){
size(1800,1200);
PImage minecraft = loadImage("bush.png");
minecraft.resize(1800, 1200);      
  background(minecraft);
creeper=loadImage("creeper.png");
creeper.resize(5,5);  
}
void draw(){


  if (isNear(mouseX,1211)){
     if (isNear(mouseY,463)){
    fill(96,169,0);
    fill(96,169,23);
  }
  }
  else{
  fill(229,20,0);
  }
 
 
  
 
  
 ellipse(mouseX,mouseY,10,10);
  
  
  
  
  
  
  

image(creeper, 1211, 463);  











}
boolean isNear(int a, int b) {
      if (abs(a - b) < 10)
          return true;
    else
       return false;
}
