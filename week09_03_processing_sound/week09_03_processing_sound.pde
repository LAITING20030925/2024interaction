//week09_03_processing_sound
//Sketch-Library-Manager Libraries 找 sound 可找到 sound 函式庫(processsing  基金會做的) 
//File-Examples,選Libraries核心函示庫 
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound = new SoundFile(this, "In Game Music.mp3");
  sound.loop();
}
void draw(){
  
}
