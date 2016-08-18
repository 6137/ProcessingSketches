float x = 30;
 float y = 1;
float birdYVelocity = 1;
float gravity = .5;
float pipex = 500;
float pipex2 = 500;
float random2 = 0;
float random =100;
float lengthr = 700;
float lengthr2 = 0;
void setup(){
  size(800,800);


}
  void mousePressed(){
    
    birdYVelocity = -5;
   
    
    
  }

void draw(){

      
  background(0,187,17);
  ellipse(x,y,30,30);
  fill(0,17,170);
  y += birdYVelocity;
  birdYVelocity +=gravity;
  rect(pipex,random,60,lengthr);
  fill(85,0,0);
  rect(pipex2,random2, 60,lengthr2); 
  fill(85,0,0);
  pipex-=5;
  if( pipex <= 0){
      pipex += 800;
   random = random (800);
   random = random (-100);
      


  }
  if (y > lengthr - 4 && x > pipex && x < pipex + 600){
  exit();
System.out.println("You lost.");
}
else {
 

}
}
   

  
  

