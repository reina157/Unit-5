void intro() {
  background(0);
  rect(400,400,200,100);
 stroke(24,82,81);
 strokeWeight(10);
 textSize(20);
 
 text("START",450,450);
}

void introClicks() {
 if( mouseX >= 400 && mouseX<= 600 && mouseY>= 400 && mouseY<= 500) 
 mode = GAME;
}
