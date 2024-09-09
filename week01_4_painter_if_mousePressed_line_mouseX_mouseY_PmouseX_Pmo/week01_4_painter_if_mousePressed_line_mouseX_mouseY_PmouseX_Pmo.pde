//week01_4_painter_if_mousePressed_line_mouseX_mouseY_PmouseX_PmouseY
void setup(){
  size(500,500); //大小
}

void draw(){
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//如果MOUSE按下去，就畫線MOUSE的XY座標到PREVIOUS MOUSE XY
