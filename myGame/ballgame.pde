import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;

int i = 0 ,  score=0 , count = 0;     color c, colorDurationInSeconds=5;
int margin = 100,     textSize =15, buttomBoxColor =150, playTime = 0; 
boolean lock = true;


player b = new player();
pillar[] p = new pillar[3];


boolean intro = true;  // キープレスでスタ－ト画面
boolean start = true;  // game starts
boolean isHit = false; // collision detection + ぶつかったらTRUEになる
boolean end   = false; // TRUEになったらゲーム終了

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
  playTime=(int)millis()/1000;
  back();
  screen();
  bottom();
  } 

  
  // //if(start=false){
  // saveFrame( sketchPath()+"\\frame\\"+"frame.png" );
  // PImage Image = loadImage(sketchPath()+"\\frame\\"+"frame.png");
  // image( Image ,0,0 );
  // //}
  cross();
  

}
