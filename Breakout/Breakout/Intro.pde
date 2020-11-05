void intro() {
  
  background(0);
  
  //GIF
  image(gif[f], 0, 0, width, height);
  if (frameCount % 2 == 0) f ++;
  if (f == 16) f = 0;
  
  //title
  fill(200);
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
  
  
  
  
  
  
  
  
}
