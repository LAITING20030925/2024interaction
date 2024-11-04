//week09_2_PFont_outside_void_setup_createFont_void_draw_text
PFont font0,font,font2;
void setup(){
  size(500,500);
  font0 = createFont("Ariel",50);
  font = createFont("標楷體",50);
  font2 = createFont("elffont-rock.otf",50);
}
void draw(){
  background(0);
  textSize(50);
  textFont(font0);
  text("Hello",50,50);

  //PFont font = createFont("標楷體",50);
  textFont(font);
  text("中午看到了",50,150);

  //PFont font2 = createFont("elffont-rock.otf",50);
  textFont(font2);
  text("ㄇㄉㄈㄎ",50,250);
}
