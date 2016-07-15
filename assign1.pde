final int GAME_START=0;
final int GAME_PLAYING=1;
final int GAME_OVER=2;

PImage resA;
PImage resB;
PImage star;
PImage life;
PImage bg1;
PImage bg2;
int bg2X,bg1X,enemyX,enemyY,treasureX,treasureY;

float enemyW=61;
float fighterW=51;
float treasureW=41;
float hp=floor(random(30,215));
float fighterX=640-fighterW,fighterY=floor(random(10,458));
float speed=3;


void setup(){
size(640,480);



resA=loadImage("img/enemy.png");
resB=loadImage("img/fighter.png");
star=loadImage("img/treasure.png");
life=loadImage("img/hp.png");
bg1=loadImage("img/bg1.png");
bg2=loadImage("img/bg2.png");
colorMode(RGB);
color(234,34,34);

treasureX=floor(random(10,600));
treasureY=floor(random(10,308));
bg1X=641;
bg2X=0;
enemyX=0;
enemyY=floor(random(10,308));
}

void draw(){
  //GAME_START
  image(bg1,bg1X-641,0);
  image(bg2,bg2X-641,0);
  image(resA,enemyX,enemyY);
  
  image(resB,fighterX,fighterY);
     
    
  image(star,treasureX,treasureY);
  fill(234,34,34);
  rectMode(CORNERS);
  rect(9,12,hp,32); 
  image(life,7,9);
  
  bg1X++;
  bg1X%=1282;
  bg2X++;
  bg2X%=1282;
  enemyX+=3;
  enemyX%=640; 
  
}
