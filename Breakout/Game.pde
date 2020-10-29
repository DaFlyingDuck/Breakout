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
    rect(x[i], y[i], brickw, brickl);
    
    // bounce on brick
    if ((Ball.x > x[i] - brickw/2 - Ball_d && Ball.x < x[i] + brickw/2 + Ball_d) && (Ball.y > y[i] - brickl/2 - Ball_d && Ball.y < y[i] + brickl/2 + Ball_d)) {
      //if ball is in certain area collide from each side
      println("collisionbrrrrrrrrrrrrrrr" + i);
    }
    
    i ++;
    
  }

  
  
  //lives counter
  fill(100);
  textSize(20);
  text(lives, paddleX, 680);
  
  
  //position update
  update();
  
  //collision detection
  collision();
  
}

void gameClicks() {
  
  
  
  
}
