//week09_06_keyboard_ninja03_void_randomApple
PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");
}
float appleX = 100, appleY = 500, appleVX = 5, appleVY = -30;
void randomApple(){
  appleX = random(100,500);
  appleY = 500;
  appleVX = random(-8,8);
  appleVY = random(-30,-25);
}
void draw(){
  background(board);
  fill(255,0,0);
  ellipse(appleX,appleY,80,80); //紅色的蘋果
  appleX += appleVX; //照著運動的速度，X往右移
  appleY += appleVY; //照著運動的速度，Y往右移
  appleVY += 0.98; //0.98 重力加速度
  if(appleX > 600 || appleX < 0 || appleY > 550){
    randomApple();//當蘋果出界時，重設新的蘋果位置、速度
  }
}
