void game() {
  
  background(0);
  
  
  fill(210);
  rect(paddleX, 680, 200, 25);
  circle(Ball.x, Ball.y, Ball_d);
  
  //bricks
  fill(180);
  
  int i = 0;
  while (i < bricks) {
    //draw brick
    circle(x[i], y[i], brickd);
    
    // bounce on brick
    if (dist(Ball.x, Ball.y, x[i], y[i]) < Ball_d/2 + brickd/2) {
      Ball_v.x = (Ball.x - x[i])/20;
      Ball_v.y = (Ball.y - y[i])/20;
    }
    
    i ++;
    
  }

  
  
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
