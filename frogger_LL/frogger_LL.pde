int y = 350;
int x = 200;
car c;

class car{
 int xpos;
 int ypos;
 int lpos;
 int spos;
  car(int x,int y,int l,int s){
 
    rect(x,y,30,50);
    xpos = x;
    ypos = y;
    lpos = l;
    spos = s;
    fill(0,0,255);
  }
    void display() 
  {
    fill(0,0,255);
    rect(xpos , ypos, lpos, 50);
  }
  void moveR(){
    xpos+=spos;
    if(x<=0){
      x=400;
    }
  }

}

void setup(){
 
  size(400,400);
   c = new car(350,200,30,50);
   

  
}


void draw(){
  background(0,255,0);
  fill(255,0,255);
  ellipse(x,y,20,20);
  c.moveR();
  c.display();
  cheating();
  
} 
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      y-=10;
      }
      else if(keyCode == DOWN)
      {
       y+=10;
      }
      else if(keyCode == RIGHT)
      {
       x+=10;
      }
      else if(keyCode == LEFT)
      {
       x-=10;
      }
    
}

}
void cheating(){
  if (y >= 400 ){
   
    y=400;
  }
   if (y <= 0 ){
   
    y=0;
  }
   if (x >= 400 ){
    x=400;
    
  }
   if (x <= 0 ){
    x=0;
   
  }
}