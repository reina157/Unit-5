void options(){
  background(225);
  theme.play();
  strokeWeight(30);
  fill(0);
  text("OPTIONS!",400,100);
  strokeWeight(10);
  fill(0);
  // Leave options X mark 
  line(700,50,750,100);
  line(750,50,700,100);
  fill(225);
  //box for images
  rect(125,250,175,175);
  rect(400,250,175,175);
   rect(675,250,175,175);
   
   //diameter size
   d= map(sliderX, 235, 370, 1, 50);
   
   //image in box
   image(mickeymouse, 40,170,175,175);
   image(spongebob,300,170,175,175);
   image(panda, 600, 170,175,175);
   
  
   
   //slider
   line(750, 500, 550, 500);
  circle(sliderX, 500, 30);
}


void optionsClicks(){
    if(mouseX>700 && mouseX< 750 && mouseY >50 && mouseY < 100)
    mode = INTRO;
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
{ if (pandaOn == true) {
    image(panda,x, y, d, d);
 }
   if (spongebobOn == true) {
    image(spongebob, x, y, d, d);
}
  if (mickeymouseOn == true) {
    image(mickeymouse, x, y, d, d);
}
}
}
