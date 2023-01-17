void keyPressed(){
  switch( key ) {
    
    case ' ' : b.jump();//キー割り当て
    intro=false;//キーを押すとintroがtrueからfalseになり
                //falseになったらbirdクラスのjumpが動く
     //停止状態
    if(end==false){ 
      reset();
      base_time = millis();
      click = 1;
      loop();
    }
    break;
    
    case 'e': case 'E' : b.invi();
    isHit=false;
    if(end==false){
      reset();
      base_time = millis();
      loop();
    }
    break;
  
    case 'p': case 'P' : pause();
    isHit=false;
    if(end==false){
      reset();
    }
    break;
  
    // get x,y position cross on the screen
    case 'c': case 'C' : if(crossing){crossing=false;}else{crossing=true;};
    isHit=false;
    if(end==false){
      reset();
    }
    break;
  
  }
}
