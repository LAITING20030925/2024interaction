//week07_7_arras07_angle_bulletX_bulletY_bulletVX_bulletVY
void setup(){
  size(500,400);
}
void keyPressed(){
  if(keyCode==RIGHT) vx = 1;
  if(keyCode==LEFT) vx = -1;
  if(keyCode==UP) vy = -1;
  if(keyCode==DOWN) vy = 1;
}
void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT) vx = 0;
  if(keyCode==UP || keyCode==DOWN) vy = 0;
}
float x = 250, y = 200, vx = 0, vy = 0;//代表移動速度
void draw(){
  x += vx;
  y += vy;
  background(219);//灰底
  translate(-x,-y);//讓全世界，都向反方向移動
  translate(width/2,height/2);
  float mx = mouseX+x-width/2, my = mouseY+y-height/2;
  ellipse(mx,my,8,8);
  stroke(210);//灰色的線
  strokeWeight(1);
  for(int i=0;i<30;i++){
    line(0,i*30,500,i*30);
    line(i*30,0,i*30,500);
  }
  float dx = mx - x, dy = my - y;
  float a = atan2(dy,dx); //atan2()算出角度
  angle = a;
  line(x,y,mx,my);
  pushMatrix();
  myTank(x,y,a);
  popMatrix();
  if(bulletVX!=0 && bulletVY!=0){
    bulletX += bulletVX;
    bulletY += bulletVY;
    ellipse(bulletX,bulletY,20,20);
  }
}
float angle, bulletX = 0, bulletY = 0, bulletVX = 0, bulletVY = 0;
void mousePressed(){
  bulletX = x;
  bulletY = y;
  bulletVX = cos(angle);
  bulletVY = sin(angle);
}
void myTank(float x,float y,float a){
  translate(x,y);
  rotate(a);//旋轉
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);//很粗的一條線,長度是40
  rect(20,-10,20,20);//砲管
  
  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(0,0,55,55); //圓形的身體
}
