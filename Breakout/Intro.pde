void intro() {
  
  intro.play();
  
  background(0);
  
  //GIF
  image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) f ++;
  if (f == 16) f = 0;
  
  //title
  flashing ++;
  if (flashing < 120) fill(0, 0, 170);
  else if (flashing < 240)  fill(220, 0, 0);
  else {
    flashing = 0;
  }
    
  textSize(110);
  text("Breakout", 500, 275);
  

  
  
} 

void introClicks() {
  
  //if clicked into game
  mode = GAME;
  lives = 3;
  score = 0;
  timer = 0;
  reset();
  
  intro.pause();
  intro.rewind();
  theme.play();
  theme.loop();
  
  
  //reset bricks
  int tempx = 100;
  int tempy = 100;
  int tempcolor = 255;
  int templives = 3;
  int tempcount = 0;
  int i = 0;
  
  while (i < bricks) {
    
    x[i] = tempx;
    y[i] = tempy;
    colour[i] = tempcolor;
    bricklives[i] = templives;
    tempx += 100;
 
    if (tempx == 1000) {
      tempy += 50;
      tempx = 100;
      tempcount ++;
      
      if (templives > 1 && tempcount == 2) {
        templives --;
        if (tempcolor > 100) tempcolor -= 100;
        tempcount = 0;
      }
      
    }
    
    
    i ++;
  }
  
  
  
  
}
