void options (){
  background(225);
  theme.play();
  strokeWeight(30);
  fill(0);
  text("OPTIONS!",400,100);
  strokeWeight(10);
  fill(0);
  line(700,50,750,100);
  line(750,50,700,100);
  fill(225);
  rect(125,300,175,175);
  rect(400,300,175,175);
   rect(675,300,175,175);
   
   // stamps
   tactile(125,300,175,175);
   spongebobOnOff();
   
   tactile(400,300,175,175);
   pandaOnOff();
   
   tactile(675,300,175,175);
   mickeymouseOnOff();
}

void optionsClicks(){
    if(mouseX>700 && mouseX< 750 && mouseY >50 && mouseY < 100)
    mode = INTRO;
}
