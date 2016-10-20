  
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Asteroid a = new Asteroid(950,0,20, 50,3);
Asteroid a1 = new Asteroid(800,0,40,50,2);
Asteroid a2 = new Asteroid(200,0,80,50,1);

SpaceShip s = new SpaceShip(500,750);
  Bullet b = new Bullet(30,20);
  Bullet b1 = new Bullet(20,20);
  Bullet b2 = new Bullet(40,20);
void setup(){
  size(1000,800);
  bullets.add(b);
  bullets.add(b1);
  bullets.add(b2);
  asteroids.add(a);
  asteroids.add(a1);
  asteroids.add(a2);
}
void draw(){
  background(255,0,255);
  s.display();
  s.cheating();
 moveAllBullets();
 moveAllAsteroids();
 intersection();
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
else if(keyPressed && key == ' ')
  {
    Bullet b3 = new Bullet(s.getx()+20,990);
    //create a new bullet object
    bullets.add(b3);
    //add it to the arraylist
  }

}

  //bullet
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
  void move(){
  by-=10;
  }
   void display() 
  {
     stroke(255);
     ellipse(bx,by,20,20);
    point(bx,by);

}
}



void moveAllBullets(){
  for(Bullet b: bullets){
   b.move(); 
   b.display();
 
  }

  
}
class Asteroid{
  int ax;
  int ay;
  int height;
  int size;
  int speed;
  Asteroid(int ax,int ay,int height, int size, int speed){
   this.ax = ax;
   this.ay = ay; 
   this.height = height;
   this.size = size;
   this.speed = speed;
  }
  int getax(){
    return this.ax;
  }
  void setax(int ax){
    this.ax = ax;
  }
  int getay(){
     return this.ay;
  }
  void getay(int ay){
    this.ay = ay;
  }
    int getheight(){
    return this.height;
  }
  void setheight(int height){
    this.height = height;
  }
   int getsize(){
     return this.size;
  }
  void setsize(int size){
    this.size = size;
  }
  int getspeed(){
    return this.speed;
  }
  void setspeed(int speed){
    this.speed = speed;
  }
  void move(){
    ay+=speed;
  }
   void display() 
  {
     fill(0,0,255);
    noStroke(); 
    
    rect(ax, ay, height, size, speed);
}

  
}
void moveAllAsteroids(){
   for(Asteroid a: asteroids){
   a.move(); 
   a.display();
 
  }
  
}
void intersection()
{
  for(Asteroid  a : asteroids)
  {
    for(Bullet b : bullets)
    {
      if(a.getax() == b.getbx()&& a.getay() == b.getby())
      
      {
        asteroids.remove(a);
        bullets.remove(b); 
        break;
      }
    }
  }
}




