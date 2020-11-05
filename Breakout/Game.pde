void game() {

  background(0);


  fill(210);
  fill(0, 0, 170);
  rect(paddleX, 680, 200, 25);
  fill(220, 0, 0);
  circle(Ball.x, Ball.y, Ball_d);

  //bricks
  fill(180);

  int i = 0;
  while (i < bricks) {
    //draw brick
    if (bricklives[i] > 0) {
      fill(colour[i]);
      rect(x[i], y[i], brickw, brickl);


      // bounce on brick; if within collision radius of the brick
      if ((Ball.x > x[i] - brickw/2 - Ball_d/2 && Ball.x < x[i] + brickw/2 + Ball_d/2) && (Ball.y > y[i] - brickl/2 - Ball_d/2 && Ball.y < y[i] + brickl/2 + Ball_d/2)) {

        //top edge bounce
        if (Ball.y < y[i] - brickl/2 && Ball.y > y[i] - brickl/2 - Ball_d/2 && Ball_v.y > 0) {
          Ball_v.y = Ball_v.y * -1;
          bricklives[i] = bricklives[i] - 1;
          if (bricklives[i] == 0)  { 
            score ++;
            println(score);
            breaks.play();
            breaks.rewind();
          } else {
            bounce.play();
            bounce.rewind();
          }
          colour[i] -= 100;
        }
        //bottom edge bounce 
        if (Ball.y > y[i] + brickl/2 && Ball.y < y[i] + brickl/2 + Ball_d/2 && Ball_v.y < 0) {
          Ball_v.y = Ball_v.y * -1;
          bricklives[i] = bricklives[i] - 1;
          if (bricklives[i] == 0)  { 
            score ++;
            println(score);
            breaks.play();
            breaks.rewind();
          } else {
            bounce.play();
            bounce.rewind();
          }
          colour[i] -= 100;

        }
        //left edge bounce
        if (Ball.x < x[i] - brickw/2 && Ball.x > x[1] - brickw/2 - Ball_d/2 && Ball_v.x > 0) {
          Ball_v.x = Ball_v.x * -1;
          
          if (Ball.y < y[i] - brickl/2 && Ball.y > y[i] - brickl/2 - Ball_d/2) { // makes it didnt hit top so it doesnt make it a double hit
          } else if (Ball.y > y[i] + brickl/2 && Ball.y < y[i] + brickl/2 + Ball_d/2) { // makes sure it didnt hit bottom
          } else {
            bricklives[i] = bricklives[i] - 1;
            if (bricklives[i] == 0)  { 
              score ++;
              println(score);
              breaks.play();
              breaks.rewind();
            } else {
              bounce.play();
              bounce.rewind();
            }
            colour[i] -= 100;

          }
          
        }
        //right edge bounce
        if (Ball.x > x[i] + brickw/2 && Ball.x < x[i] + brickw/2 + Ball_d/2 && Ball_v.x < 0) {
          Ball_v.x = Ball_v.x * -1;
          
          if (Ball.y < y[i] - brickl/2 && Ball.y > y[i] - brickl/2 - Ball_d/2) { // makes it didnt hit top
          } else if (Ball.y > y[i] + brickl/2 && Ball.y < y[i] + brickl/2 + Ball_d/2) { // makes sure it didnt hit bottom
          } else {
            bricklives[i] = bricklives[i] - 1;
            if (bricklives[i] == 0)  { 
              score ++;
              println(score);
              breaks.play();
              breaks.rewind();
            } else {
              bounce.play();
              bounce.rewind();
            }
            colour[i] -= 100;

          }
          
        }

      }
      
    }

    i ++;
  }



  //lives counter
  fill(100);
  textSize(20);
  text(lives, paddleX, 680);
  if (lives < 1) {
    mode = GAMEOVER;  
    theme.pause();
    theme.rewind();
  }
  
  //score check
  if (score == bricks) {
    mode = GAMEOVER;
    theme.pause();
    theme.rewind();
  }

  //position update
  update();

  //collision detection
  collision();
}

void gameClicks() {
  
  mode = PAUSE;
  
}
