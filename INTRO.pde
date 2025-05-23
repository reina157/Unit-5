void intro() {
  background(118,163,170);
  
  tactile(400,400,200,100);
  rect(400,400,200,100);
 stroke(24,82,81);
 strokeWeight(10);
 fill(0);
 textSize(30);
 text("START",400,400);
 text("Begin Clicker Game!",400,200);
 fill(255);
}

void tactile(int x, int y, int w, int h){
  if(mouseX>x && mouseX< x+w && mouseY>y && mouseY <y+h){
    stroke(255);
  }else {
    stroke(0);
  }
}

void introClicks() {
 if( mouseX > 400 && mouseX< 600 && mouseY> 400 && mouseY< 500) 
 mode = GAME;
}
