//Taiki Shickele
//Breakout


// ball bounce



// mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

PFont comicsans;

//Paddle and Ball variables
float paddleX;
PVector Ball;
PVector Ball_v;

//Keyboard variables
boolean akey, dkey;

int lives;

int timer = 0;


void setup() {
  
  size(1000, 750);
  textAlign(CENTER, CENTER);
  frameRate(120);
  mode = INTRO;
  
  comicsans = loadFont("ComicSansMS-Bold-48.vlw");
  textFont(comicsans, 48);
  
  // initialize ball and paddle
  rectMode(CENTER);
  paddleX = width/2;
  Ball = new PVector(width/2, height * 5/8);
  
  
  
  
  
  
}

void draw() {
  
  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }
  
}
