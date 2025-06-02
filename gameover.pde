void gameover () {
  background(225,225,225);
  theme.pause();
  gameover.play();
  text("GAME OVER",400,300);
  if(score> highscore){
  highscore = score; 
 }
 text("HIGHSCORE: "+highscore,400,400,250,100);
}
 
void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
