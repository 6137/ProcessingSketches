  float x;
  float y ;
   float z;
   float n;

void setup(){
  background(200);
  // rect(400,0,1,800);
  
 n = random(9);
 z = random(9);
  
  
  size(800,800);
  
  text("Click the arrow that points to the side with more dots.", 10, 30); 
     for (int i = 0; i <z ; i = i+1) {
  x = random(380);
   y = random(780);
     fill(034,221,170);
   ellipse(x+10,y+10,20,20);
 
  
}
 for (int i = 0; i <n ; i = i+1) {
   x = random(380);
   y = random(780);
     fill(0,0,0);
   ellipse(x+410,y+10,20,20);
   
  
}
}
void draw(){
rect(400,0,1,800);

 
  

 
  } 
  

void keyPressed(){

if(n>z){
  
 if (keyCode == RIGHT){
setup();
draw();
}

 
}





if (z>n){
 if (keyCode == LEFT){
setup();
draw();
}

}
}





