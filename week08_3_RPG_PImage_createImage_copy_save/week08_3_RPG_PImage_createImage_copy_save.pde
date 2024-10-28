//week08_3_RPG_PImage_createImage_copy_save
PImage img;
void setup(){
  size(640,480); //15格=480, 480/15=32 小圓
  img = loadImage("640x480.png");
}
void draw(){
  background(img);
  for(int i=0;i<15;i++){
    for(int j=0;j<20;j++){
      noFill();
      stroke(0);
      rect(j*32,i*32,32,32);
    }
  }
  stroke(255,0,0);
  rect(J*32,I*32,32,32);
}
int I = -1, J = -1;
void mouseMoved(){
  I = mouseY/32; //小心 Y
  J = mouseX/32; //小心 X
}
void mousePressed(){
  //PImage now;
  //now,copy(img,0,0,640,480,0,0,640,480);
  PImage now = createImage(32,32,RGB);
  now.copy(img,J*32,I*32,32,32,0,0,32,32);
  now.save("1.png");
}
