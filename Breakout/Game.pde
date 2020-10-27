void game() {
  
  background(0);
  
  
  fill(210);
  rect(paddleX, 680, 200, 25);
  circle(Ball.x, Ball.y, 20);
  
  //lives counter
  fill(120);
  textSize(20);
  text(lives, paddleX, 680);
  
  
  //position update
  update();
  
  //collision detection
  collision();
  
}

void gameClicks() {
  
  
  
  
}
