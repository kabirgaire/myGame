import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;

int i = 0 ,  score=0 , count = 0;     color c, colorDurationInSeconds=5;
int margin = 100, textSize =15;
int buttonDisplayBoxColor =150;


player b = new player();
pillar[] p = new pillar[3];

boolean end=false;//起動したら画面は停止される
boolean intro=true;//キーで動かせるようにする
boolean isHit = false; // ヒットしたかのフラグ　障害物と当たったらtrueになる
boolean start = true;
void setup(){
  size(800,800);
  
  PFont font = createFont("Meiryo", 50);//日本語
  textFont(font);//日本語
  
  for(int i = 0;i<3;i++){
    p[i]=new pillar(i);
  }
  
}


void draw(){
  
  if(start){
  
  back();
  
//////////////////////////////
  screen();
  buttonDisplay();
  } 
  
  //if(start=false){
  saveFrame( sketchPath()+"\\frame\\"+"frame.png" );
  PImage Image = loadImage(sketchPath()+"\\frame\\"+"frame.png");
  image( Image ,0,0 );
  //}
  cross();
  

}
