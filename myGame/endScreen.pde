 void endScreen(){
   //black textbox
  rect(width/2-225, 100, 450, 70); //game start / end
  rect(width/2-150, 500, 350, 50);
  fill(255);
  stroke(255);
  background(50);

  //turn on to activate cross
  //cross();
  
  textSize(70);
  text("ゲーム・オーバー", width/2-275, 145);  //game end
  
  //score + score variable
  fill(255);
  stroke(255);
  
  textSize(20);
  text("スコア", width/2-100, 350);
  text(score, width/2+80, 350);
  
  //playtime counting
  text("プレイタイム", width/2-100, 380);
  text(  (int)millis()/1000, width/2+80, 380);
  
   // click to restart button
  fill(255);
  text("---クリックで再プレイ---", 285, 538); 
}
