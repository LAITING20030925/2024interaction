//week01_5_void__keyPressed_if_key_strokeWeight
void setup(){
  size(500,500); //大小
}

void draw(){
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//如果MOUSE按下去，就畫線MOUSE的XY座標到PREVIOUS MOUSE XY
void keyPressed(){
  if(key=='1') strokeWeight(1);
  if(key=='2') strokeWeight(5);
  if(key=='3') strokeWeight(10);
}//如果 key 按下去，看key的值，決定線的粗細
