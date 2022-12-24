void screen() {

  if(end) {
    b.invi();
    b.move();
    b.drag();
  }

  b.drawplayer();
  if(end) {
  }

  b.checkCollisions();
  for (int i = 0; i < 3; i++) {
    p[i].drawPillar();
    p[i].checkPosition();
  }
  fill(0);
  stroke(255);
  textSize(32);


  if(end) {
    
    rect(20, 20, 100, 50);//初めの座標～終わりの座標
    fill(255);
    text(score, 30, 58);//"文字",ｘ,ｙ座標

  } else {
    
    if (intro) {
        
        startScreen();
    }
    else{
        
        endScreen();
        
    }
  }
}
