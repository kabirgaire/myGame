class player{
  float xPos,yPos,ySpeed;
  player(){
    xPos = 300;//タイトル画面のプレイヤーのx軸  // player x co-ordinates
    yPos = 340;//タイトル画面のプレイヤーのy軸  // player y co-ordinates
  }
  void drawplayer(){
    stroke(255);
    noFill();
    strokeWeight(2);
    ellipse(xPos,yPos,20,20);//操作キャラの大きさ
  }
  void jump(){
    ySpeed=-3;//ジャンプで上がる高さ
  }
  void drag(){
    ySpeed+=0.2;//落ちる速さ
  }
  void move(){
    yPos+=ySpeed; 
    for(int i = 0;i<3;i++){   // i = no.of walls
      p[i].xPos-=3;//スクロールスピード   //game speed
    }
  }
  //
  void invi(){
    if (intro && count == 0) {
    // 当たったときの処理
    count = 30; // 無敵時間をセット  //invincible period in seconds
  }

  if (count > 0) {
    xPos = 0;
    --count;
    if (count <= 0) {
      // 無敵時間の終わり //invincible period
      count = 0;
      intro = false;
      } 
    }
  }
  
  //  collision
  void checkCollisions(){
   if(yPos>800){
     end=false;
   }
   
   //↓当たり判定  //  collision
   for(int i = 0;i<3;i++){                         // p == pillar
     if((xPos<p[i].xPos+10 && xPos>p[i].xPos-10)  // 10 pixel before and after piller
         &&(yPos<p[i].wallSpace-100||yPos>p[i].wallSpace+100)){  // 
     end=false;
     }
   }
  }
}
