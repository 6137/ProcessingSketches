//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int Dot = 30;

void setup() {
  size(800, 200);
}

void draw() {
  //3. make it a nice color
 fill(89,890,678);
  //4. if the mouse is pressed...
     if (mousePressed){
       //ellipse(Dot,77,0,6);
     playSound();
//5. ... change the X co-ordinate so that the dot moves to the right
  Dot = Dot + 201;
  
     }
     
     
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
ellipse(Dot,67,100,100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 

}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("cat-lazer.wav");
    sound.trigger();
    soundPlayed = true;
  }
}



