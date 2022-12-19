//障害物の壁
class pillar{
  float xPos, wallSpace;
  boolean cashed = false;
  pillar(int i){
    xPos = 200+(i*280);//棒と棒の間隔が狭まる(1)
    wallSpace = random(400)+100;//壁が出てくる範囲(上)
  }
  void drawPillar(){
  line(xPos,0,xPos,wallSpace-100);//壁のない範囲
  line(xPos,wallSpace+100,xPos,800);//壁のない範囲、
  }
  
  void checkPosition(){
    
    if(xPos<0){
      xPos+=(280*3);//棒と棒の間隔が広がる(1)
      wallSpace = random(400)+100;//壁が出てくる範囲(下)
      cashed=false;
    }
    
    if(xPos<250&&cashed==false){//
      cashed=true;
      score=score+1;//スコアの追加する点数
    }
  }
}

void reset(){
  end=true;
  score=0;//スコアの初期値は0
  b.yPos=100;//ボールの開始位置
  for(int i = 0;i<3;i++){
    p[i].xPos+=550;//スタートから壁が出てくるまでの範囲
    p[i].cashed = false;
  }
}
