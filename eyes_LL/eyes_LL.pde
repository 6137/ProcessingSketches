int x;
int y;

int Dot = 10;
void setup(){
  size(4000,3004);
}
void draw(){
  
  fill(255,255,255);
ellipse(850,500,300,300);
ellipse(1150,500,300,300);



if (mouseX <= 1100){
  //fill(0,0,0);

x = 1000;


}
else if (mouseY <= 400){
  y = 600;
}
else if (mouseX >= 1250){
  x = 1000;
}
else if(mouseY >= 600){
  y = 600;
}
else{
 
x = mouseX;
y = mouseY;
  
}
 fill(0,0,0);
ellipse(x,y,50,50);
ellipse(x-300,y,50,50);
}
