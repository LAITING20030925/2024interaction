//week15_01_circle_collision_calss_Ball_new_Ball_display
void setup(){
  size(640,360);
  Ball ball = new Ball(100,200,20);
}
Ball ball;
void draw(){
  ball.display();
}
class Ball{
  int x,y,r;
  Ball(int x0, int y0, int r0){
    x = x0;
    y = y0;
    r = r0;
  }
  void display(){
    ellipse(x,y,r+r,r+r);
  }
}
