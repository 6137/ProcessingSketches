int y = 380;
int x = 200;
car c;
car c1;
car c2;
car c3;
car c4;
car c5;

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
    if(xpos<=0){
      xpos=400;
     
    }
   if (xpos>=400){
     xpos=0;
   }
  }
  void moveL(){
     xpos+=spos;
    if(xpos<=0){
      xpos=400;
     
    }
   
  }
  
int getXpos(){
  return xpos;
}
int getYpos(){
  return ypos;
}
int getlpos(){
  return lpos;
}

}
 boolean intersects(car car) {
if ((y > car.getYpos() && y < car.getYpos()+50) && (x > car.getXpos() && x < car.getXpos()+car.getlpos()))
          return true;
    else 
        return false;
}


void setup(){
 
  size(400,400);
   c = new car(20,200,30,2);
   c1 = new car(350,140,30,-5);
  c2 = new car(200, 80,30,-3);
  c3 = new car(200,10,30,4);
  c4 = new car(270,260,30,5);
  c5 = new car(200,320,30,-4);
}


void draw(){
  background(0,255,0);
  fill(255,0,255);
  ellipse(x,y,10,10);
  c.moveR();
  c1.moveL();
  c.display();
  c1.display();
  c2.moveL();
  c2.display();
  c3.moveR();
  c3.display();
  c4.moveR();
  c4.display();
  c5.moveL();
  c5.display();
 
  cheating();
  if(intersects(c)||intersects(c1)||intersects(c2)||intersects(c3)||intersects(c4)||intersects(c5)){
    println("You Lost.");
    exit();
  }
  if(y<=10){
    
    text( "You Won!", 110,200); 
  textSize(30.0); 
    
    
  }
  if(x ==50&&y==200){
    
 
    text( "You found the secret way to win!", 10,200); 
  textSize(22.0); 
    
  }
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
