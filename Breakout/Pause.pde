void pause() {
  
  flashing ++;
  if (flashing < 120) fill(0, 0, 170);
  else if (flashing < 240)  fill(220, 0, 0);
  else {
    flashing = 0;
  }
  textSize(110);
  text("Paused", 500, 275);
  
  
}

void pauseClicks() {
  
  mode = GAME;
  
  

}
