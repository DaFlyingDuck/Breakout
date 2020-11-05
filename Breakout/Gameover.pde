void gameover() {

  
  image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) f ++;
  if (f == 16) f = 0;
  
  //Gameover
  if (score < bricks) {
    
    flashing ++;
    if (flashing < 120) fill(0, 0, 170);
    else if (flashing < 240)  fill(220, 0, 0);
    else {
      flashing = 0;
    }
    
    textSize(110);
    text("YOU LOST", 500, 275);
    loss.play();
    
  } else {
    
    flashing ++;
    if (flashing < 120) fill(0, 0, 170);
    else if (flashing < 240)  fill(220, 0, 0);
    else {
      flashing = 0;
    }
    
    textSize(110);
    text("YOU WON", 500, 275);
    win.play();
    
  }
  
  
  
}

void gameoverClicks() {
  
  win.pause();
  win.rewind();
  loss.pause();
  loss.rewind();
  mode = INTRO;
  
  
  
}
