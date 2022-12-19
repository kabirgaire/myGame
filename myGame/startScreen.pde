 void startScreen(){
  //black textbox
  
  rect(width/2-225, 100, 450, 70); //game start / end
  rect(width/2-150, 500, 350, 50);
  
  fill(255);
  stroke(255);
  
  background(50);
  //lines();
  
  textSize(70);
  text("ボールゲーム", width/2-200, 145);
  
  textSize(20);
  text("---クリックで開始---", width/2-100, 538);
}
