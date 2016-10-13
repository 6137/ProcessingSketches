ArrayList<Bullet> bullets = new ArrayList<Bullet>();
SpaceShip s = new SpaceShip(500,750);
  Bullet b = new Bullet();
void setup(){
  size(1000,800);

}
void draw(){
  background(255,0,255);
  s.display();
  s.cheating();
  
  
}
class SpaceShip{
  int getx(){
    return this.x;
  }
  void setx(int x){
    this.x = x;
  }
   int gety(){
    return this.y;
  }
  void sety(int y){
    this.y = y;
  }
    int x;
int y ;

SpaceShip(int x,int y){
this.x = x;
this.y = y;
  
}
 void display() 
  {
    fill(0,255,0);
    rect(x , y,  50, 50);
}

void cheating(){
  if (x>=960){
    x = 950;
  }
  if(x<=0){
    x = 0;
  }
    
  
}
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == RIGHT)
      {
       s.setx(s.getx()+20);
      }
      else if(keyCode == LEFT)
      {
       s.setx(s.getx()-20);
      }
}
}
class Bullet{
  int bx;
  int by;
  
  Bullet(int bx, int by){
    this.bx = bx;
    this.by = by;
    
  }
  int getbx(){
    return this.bx;
  }
  void setbx(int bx){
    this.bx = bx;
  }
  int getby(){
    return this.by;
  }
  void setby(int by){
    this.by = by;
  }
  move(){
  by+=10;
  }
   void display() 
  {
     stroke(255);
    point(x,y);

}


  
}




