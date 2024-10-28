//week08_4_RPG_2d_array_floor_map
int [][] floor = {
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5}, //有20個數字
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},  //有20個數字
  {4, 1, 1, 1, 5, 4, 1, 19,3, 22,3, 22,9, 1, 1, 1, 9, 1,16, 5}, //有20個數字
};
PImage img;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480); //15格=480, 480/15=32 小圓
  img = loadImage("640x480.png");
  for(int i=1;i<=22;i++) fimg[i] = loadImage(i+".png");
}
void draw(){
  //background(img);
  for(int i=0;i<3;i++){
    for(int j=0;j<20;j++){
      int now = floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
}
