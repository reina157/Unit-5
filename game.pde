void game () {
  background(174, 214, 213);
  theme.play();


  //pause button
  fill(225);
  strokeWeight(2);
  tactile(750, 50, 70);
  ellipse(750, 50, 70, 70);
  textSize(20);
  fill(0);
  text("Pause", 750, 50);

  textSize(30);
  strokeWeight(7);


  //score
  text("SCORE: " +score, width/8, 50);
  text("LIVES: " +lives, width/8, 100);


  //target
  fill(167, 125, 73);
  stroke(0);
 
  imageMode(CENTER);
  if (pandaOn == true) {
    image(panda, x, y, d, d);
    spongebobOn=false;
    mickeymouseOn=false;
  }
  if (spongebobOn == true) {
    image(spongebob, x, y, d, d);
    pandaOn=false;
    mickeymouseOn=false;
  }
  if (mickeymouseOn == true) {
    image(mickeymouse, x, y, d, d);
    spongebobOn=false;
    pandaOn=false;
  }
  imageMode(CORNER);

  //move
  x= x+ vx;
  y= y+ vy;

  //wall bounce
  if (x<d/2 || x> width-d/2) {
    vx=vx*-1;
  }
  if (y<d/2 || y> height-d/2) {
    vy=vy*-1;
  }
}



void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score = score +1;
    vx= vx *1.2;
    vy= vy*1.2;
    bump.rewind();
    bump.play();
  } else if (dist(mouseX, mouseY, 750, 50)<50) {
    mode = PAUSE;
  } else {
    lives=lives-1;
    if (lives == 0) mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
  }
}






void tactile(int x, int y, int r) {
  if (dist(mouseX, mouseY, 750, 50)<50) {
    stroke(255);
  } else {
    stroke(0);
  }
}
