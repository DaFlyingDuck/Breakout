//Taiki Shickele
//Breakout

//visual indication for how many lives the brick has left

//Arrays
int i;
int[] x;
int[] y;
int[] colour;
int [] bricklives;
boolean brickhit[];
float brickw;
float brickl;

int bricks;

int tempx;
int tempy;
int tempcolor;

// mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


PFont comicsans;


//Paddle and Ball variables
float paddleX;
float Ball_d;
PVector Ball;
PVector Ball_v;


//Keyboard variables
boolean akey, dkey;


int lives;
int timer = 0;

//Collision variables
PVector Angle;


void setup() {
  
  bricks = 63;
  x = new int[bricks];
  y = new int[bricks];
  colour = new int[bricks];
  bricklives = new int[bricks];
  brickhit = new boolean[bricks];
  brickw = 80;
  brickl = 40;
  
  int tempx = 100;
  int tempy = 100;
  int tempcolor = 255;
  int templives = 3;
  int i = 0;
  
  while (i < bricks) {
    
    x[i] = tempx;
    y[i] = tempy;
    colour[i] = tempcolor;
    bricklives[i] = templives;
    tempx += 100;
    brickhit[i] = false;
 
    if (tempx == 1000) {
      tempy += 50;
      tempx = 100;
      tempcolor -= 40;
      
      if (templives > 1) {
        templives --;
      }
      
    }
    
    
    i ++;
  }
  
  
  size(1000, 750);
  textAlign(CENTER, CENTER);
  frameRate(120);
  mode = INTRO;
  
  comicsans = loadFont("ComicSansMS-Bold-48.vlw");
  textFont(comicsans, 48);
  
  // initialize ball and paddle
  rectMode(CENTER);
  paddleX = width/2;
  Ball_d = 20;
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
