void game () {
  background(174,214,213);
  
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
  
}
