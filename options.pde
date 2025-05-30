void options() {
  background(225);
  theme.play();
  strokeWeight(30);
  fill(0);
  text("OPTIONS!", 400, 100);
  strokeWeight(10);
  fill(0);
  // Leave options X mark
  line(700, 50, 750, 100);
  line(750, 50, 700, 100);
  fill(225);
  //box for images
  rect(125, 250, 175, 175);
  rect(400, 250, 175, 175);
  rect(675, 250, 175, 175);

  //diameter size
  d= map(sliderX, 550, 750, 50, 200);

  //image in box
  image(mickeymouse, 40, 170, 175, 175);
  image(spongebob, 300, 170, 175, 175);
  image(panda, 600, 170, 175, 175);

// indicator image
 

  //slider
  line(750, 500, 550, 500);
  circle(sliderX, 500, 30);
}


void optionsClicks() {
  if (mouseX>700 && mouseX< 750 && mouseY >50 && mouseY < 100) {
    mode = INTRO;
  }
  if (mouseX >40 && mouseX < 225 && mouseY >170 && mouseY <345) {
    mickeymouseOn = !mickeymouseOn;
    pandaOn=false;
    spongebobOn=false;
  }
  if (mouseX> 300 && mouseX < 475 && mouseY > 170 && mouseY <345) {
    spongebobOn= !spongebobOn;
    pandaOn=false;
    mickeymouseOn=false;
    
  }
  if (mouseX > 600 && mouseX<775 && mouseY >170 && mouseY <345) {
    pandaOn=!pandaOn;
    mickeymouseOn=false;
    spongebobOn=false;
  }
  
  // indicator
  if (pandaOn == true) {
    image(panda, 100,400, d, d);
    spongebobOn=false;
    mickeymouseOn=false;
  }
  if (spongebobOn == true) {
    image(spongebob, 100, 400, d, d);
    pandaOn=false;
    mickeymouseOn=false;
  }
  if (mickeymouseOn == true) {
    image(mickeymouse, 100, 400, d, d);
    spongebobOn=false;
    pandaOn=false;
  }
  
  
  
  
  
  
  
}


// slider control
void controlSlider() {
  if (mouseX >550 && mouseX < 750 && mouseY>470 && mouseY<530) {
    sliderX=mouseX;
  }
}

//image size
void mouseDragged() {
  controlSlider(); ///moving slider
}
