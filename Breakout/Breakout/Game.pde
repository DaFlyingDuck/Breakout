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
    if (brickhit[i] == false) {
      rect(x[i], y[i], brickw, brickl);


      // bounce on brick; if within collision radius of the brick
      if ((Ball.x > x[i] - brickw/2 - Ball_d/2 && Ball.x < x[i] + brickw/2 + Ball_d/2) && (Ball.y > y[i] - brickl/2 - Ball_d/2 && Ball.y < y[i] + brickl/2 + Ball_d/2)) {

        //top edge bounce
        if ((Ball.y < y[i] - brickl/2 && Ball.y > y[i] - brickl/2 - Ball_d/2) && Ball_v.y > 0) {
          Ball_v.y = Ball_v.y * -1;
          brickhit[i] = true;
        }
        //bottom edge bounce 
        if ((Ball.y > y[i] + brickl/2 && Ball.y < y[i] + brickl/2 + Ball_d/2) && Ball_v.y < 0) {
          Ball_v.y = Ball_v.y * -1;
          brickhit[i] = true;
        }
        //left edge bounce
        if ((Ball.x < x[i] - brickw/2 && Ball.x > x[1] - brickw/2 - Ball_d/2) && Ball_v.x > 0) {
          Ball_v.x = Ball_v.x * -1;
          brickhit[i] = true;
        }
        //right edge bounce
        if ((Ball.x > x[i] + brickw/2 && Ball.x < x[i] + brickw/2 + Ball_d/2) && Ball_v.x < 0) {
          Ball_v.x = Ball_v.x * -1;
          brickhit[i] = true;
        }

        println("collisionbrrrrrrrrrrrrrrr" + i + "    " + brickhit[i]);
      }
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
