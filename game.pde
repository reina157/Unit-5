void game () {
  background(174,214,213);
  
  //score
  text("SCORE:" +score,width/8,50);
  text("LIVES:" +lives,width/8,100);
  
  
  //target
  fill(167,125,73);
  stroke(0);
  circle(x,y,d);
  
  //move 
  x= x+ vx;
  y= y+ vy;
  
  //wall bounce
  if(x<d/2 || x> width-d/2) {
    vx=vx*-1;
    
  }
   if(y<d/2 || y> height-d/2) {
    vy=vy*-1;
    
  }
  
 
  
  
}

void gameClicks() {
  if(dist(mouseX,mouseY,x,y)<50) {
    score = score +1;
    bump.rewind();
    bump.play();
  }else {
    lives=lives-1;
    if (lives == 0) mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
  }
}
