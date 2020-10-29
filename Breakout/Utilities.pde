
void reset() {
  
  timer = 0;
  Ball = new PVector(width/2, height * 5/8);
  Ball_v = new PVector(0, 0);
  while ((Ball_v.x > -1.5 && Ball_v.x < 1.5) || (Ball_v.y > -1.5 && Ball_v.y < 1.5)) {
    Ball_v = new PVector(random(-3, 3), random(-3, 3));
  }
  
  
}


void update() {
   
  if (akey == true) paddleX = paddleX - 8;
  if (dkey == true) paddleX += 8;
  
  timer ++;
  if (timer > 120) Ball.add(Ball_v);
  
}


void collision() {
  
  
  //---------------------------Paddle--------------------------------------------------------------------------------
  
  
  //Keep paddle within walls
  if (paddleX - 100 < 0) paddleX = 100;
  if (paddleX + 100 > 1000) paddleX = 900;
  
  
  // ----------------------------Ball---------------------------------------------------------------------------------
  
  // Ball Scores
  if (Ball.y > 740) {
    reset();
    lives --;
  }
  
  
  // Wall Collision
  if (Ball.y < Ball_d/2) {
    Ball.y = 10;
    Ball_v.y = Ball_v.y * -1.;
  } else if (Ball.x < Ball_d/2) {
    Ball.x = 10;
    Ball_v.x = Ball_v.x * -1.;
  } else if (Ball.x > 1000 - Ball_d/2) {
    Ball.x = 990;      
    Ball_v.x = Ball_v.x * -1.;
  }
    
  if (Ball.y > 680 - 12.5 && Ball.y < 680 + 12.5) {
    
    if (Ball.x > paddleX - 100 && Ball.x <= paddleX) {
      
       Angle = new PVector(0, -1);
       Angle.rotate(-radians(map(Ball.x, paddleX - 100, paddleX, 25, 55)));
       println(map(Ball.x, paddleX - 100, paddleX, 20, 55));
       Angle.setMag(Ball_v.mag());
       Ball_v = new PVector(Angle.x, Angle.y);
       
    }
    
    if (Ball.x > paddleX && Ball.x < paddleX + 100) {
      
      Angle = new PVector(0, -1);
      Angle.rotate(radians(map(Ball.x, paddleX, paddleX + 100, 25, 55)));
      println(map(Ball.x, paddleX, paddleX + 100, 20, 55));
      Angle.setMag(Ball_v.mag());
      Ball_v = new PVector(Angle.x, Angle.y);
    }
  
  }
  
  
}


  
