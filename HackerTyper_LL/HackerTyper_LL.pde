//1. Create a constructor for you hackertyper to initialize your x, y, lineLength and lineSpace
int keys = 0;
class HackerTyper {
  int xOffset ;
  int yOffset ;
  int y = 0; 
  int x = 0;
  int index = 0;
  int lineLength = 5;
  int lineSpace = 18;
  int scroll = 100;
  int cursorColor = 255;
  ArrayList<String> text = new ArrayList<String>();
  ArrayList<String> hackerText = new ArrayList<String>();

/* Constructor goes here. */

  HackerTyper (int x, int y){
this.x = x;
this.y = y;
this.lineSpace = lineSpace;
this.lineLength = lineLength;
}

  /* (Dont change) Adds text to you HackerTyper */
  void add(String t) {
    hackerText.add(t);
  }

  /*(Dont change) prints out hacker text */
  void printNext() {
    text.add(hackerText.get(index%hackerText.size()));
    index++;
  }

  /*diplays the access granted popup*/
  void accessGranted() {
    //11. fill in this method to diplany an access granted method on the screen.
    text("Access Granted.",1780,100);
     text("------------",1780,50);
  }
  void destroy(){
    text("--------->Computer Destroyed.", 1700,500);
    text("I own this computer.",1780, 520);
    text("---------------",1780,100);
    text("---------------",1780,120);
   text("---------------",1780,140);
  }

  /*diplays the access denied popup*/
  void accessDenied() {
    //12. fill in this method to display and access denied message on the screen
    text("Access Denied.", 1780,50);
    
  }
  void comfort(){
    text("Don't Worry",1780,120);
     text("keep hacking.",1780,140);
     fill(0,255,0);
  }

  /*displays the text*/
  void displayText() {
    //set the size and color of your text
   // textSize(10);
//fill(255,6,150);
    arrayStuff();
    drawCursor(xOffset, yOffset);
    yOffset=0;
  }

  /*draws cursor*/
  void drawCursor(int xOffset, int offset) {
    strokeWeight(1);
  millis();
    //13. use the millis() to make your cursor blink every half second

    stroke(0, cursorColor, 0);
    line(x+xOffset, y+offset+5, x+xOffset, y+offset-18);
  }

  /*(Dont change) This does array stuff*/
  void arrayStuff() {
    yOffset = 0;
    xOffset = 0; 
    for (String str : text) {
      if (text.indexOf(str)%lineLength==0) {
        yOffset+=lineSpace;
        xOffset=0;
      } 
      text(str, x+xOffset, y+yOffset);
      if (y+yOffset > height-50) {
        y-=scroll;
      }
      xOffset += textWidth(str);
    }
  }
}



HackerTyper hack = new HackerTyper(9,9);
void setup() {
  //1. set the size of your canvas // if you're using processing 3 use fullScreen
  size(2000, 1000);
  //2. Make a new instance of Hacker Typer as a member variable


  //3. Add some hacker text to your hackerTyper (Make it look hackerish!)

hack.add("request access.hack.cia.net.gov+passcodeh.tackover computer.my computer. server. 160(google);");
hack.add("request ajhkj");
hack.add("request access.hack.cia.net.gov+passcode.my computer. server. 160(internet explorer);");
hack.add("request access.tackover computer.my computer. server. 160(bing);");
hack.add("j.president(+passcode);");
}

void draw() {
  //4. set the background of your screen
  background(50,50,50);
fill(150,20,255);
  // 5. call the display text method
hack.displayText();


  //9. if the key counter variable is greater than 50 call the accesss denied method.
if (keys >=50){
  hack.accessDenied();
}
if(keys >= 70){
  hack.accessGranted();
}
if(keys >= 800){
  hack.destroy();
}
if(keys >500){
  hack.comfort();
}
  //10. if the key counter is greater than 70 call the accesGranted method.
}

//6. create a key pressed method
void keyPressed(){
  hack.printNext();
  keys +=2;
}

//7. call the printNext method from your hacker typer in your keypressed method
//above

//8.  make a member variable the number of keys pressed and increment your key counter in the keyPressed method.



