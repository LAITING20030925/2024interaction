//week07_3_arras03_atan_angle_rotate_translate_myTank
void setup(){
  size(500,400);
}
float x = 250, y = 200;
void draw(){
  background(215,184,200);
  float dx = mouseX - x, dy = mouseY - y;
  float a = atan2(dy,dx); //atan2()算出角度
  myTank(x,y,a);
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
  ellipse(x,y,55,55); //圓形的身體
}
