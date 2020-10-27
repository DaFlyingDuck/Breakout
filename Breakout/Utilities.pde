void collision() {
  
  if (paddleX - 100 < 0) paddleX = 100;
  if (paddleX + 100 > 1000) paddleX = 900;
  
  
  if (Ball.y > 740) {
    reset();
    lives --;
  }
  
  
}


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
  
