void keyPressed(){
  switch( key ) {
    
    
    case ' ': case 'w' : b.jump();//キー割り当て
    intro=false;//キーを押すとintroがtrueからfalseになり
                //falseになったらbirdクラスのjumpが動く
     //停止状態
    if(end==false){ reset(); }
    break;
    
  //
  case 'e':b.invi();
    isHit=false;
    if(end==false){
      reset();
    }
  break;
  
  
   case 'p': case 'P' : pause();
    isHit=false;
    if(end==false){
      reset();
    }
  break;
  
     case 'c': case 'C' : if(crossing){crossing=false;}else{crossing=true;};
    isHit=false;
    if(end==false){
      reset();
    }
  break;
  
  }
  //
}
