void mouseReleased() {
  if (mode == INTRO) {
  introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER){
  gameoverClicks();
  } else if (mode == OPTIONS) {
   optionsClicks(); 
  }
  
if (mode==OPTIONS) {
  if (mouseX >40 && mouseX < 225 && mouseY >170 && mouseY <345) {
    mickeymouseOn = !mickeymouseOn;
  } 
 else if (mouseX> 300 && mouseX < 475 && mouseY > 170 && mouseY <345){
   pandaOn= !pandaOn;
}
  else if (mouseX > 600 && mouseX<775 && mouseY >170 && mouseY <345){
    spongebobOn=!spongebobOn;
  }
 }
}
