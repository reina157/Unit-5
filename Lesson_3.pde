//may23   

//variables
float x, y, d;
float vx,vy; //velocity

//mode variables
int mode;
final int INTRO=1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER=4;

void setup(){
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
  // target setup
  x= width/4;
  y= width/4;
  d = 100;
  vx= random(-7,7);
  vy = random (-7,7);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  } else {
    println("Mode errors:" + mode);
  }

  
}
