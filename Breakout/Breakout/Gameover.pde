void gameover() {
  
  image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) f ++;
  if (f == 16) f = 0;
  
  
  
  
}

void gameoverClicks() {
  
  mode = INTRO;
  
  
  
}
