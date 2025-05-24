void gameover () {
  background(225,225,225);
  theme.pause();
  gameover.play();
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
