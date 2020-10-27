void intro() {
  
  background(0);
  
  //title
  fill(200);
  textSize(110);
  text("Breakout", 500, 275);
  

  
  
} 

void introClicks() {
  
  //if clicked into game
  mode = GAME;
  lives = 3;
  timer = 0;
  reset();
  
  
  
  
  
  
  
  
}
