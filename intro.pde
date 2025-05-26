void intro() {

  theme.rewind();
  theme.play();

  background(118, 163, 170);

  tactile(400, 400, 200, 100);
  rect(400, 400, 200, 100);
  stroke(24, 82, 81);
  strokeWeight(10);
  fill(0);
  textSize(30);
  text("START", 400, 400);
  text("Clicker Game!", 400, 200);
  fill(255);


  score=0;
  lives=3;
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x-w/2 && mouseX< x+w/2 && mouseY>y-h/2 && mouseY <y+h/2) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void introClicks() {
  if ( mouseX > 300 && mouseX< 500 && mouseY> 350 && mouseY< 450)
    mode = GAME;
}
