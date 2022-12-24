
void back(){
  
    //background(150,157,186);//背景の色
  //background(c1,c2,c3);
  background(c);
  int s = ((int)millis())/1000;
  
  if( s == i ){
    c = color( ((int)random(0,255)) , 
               ((int)random(0,255)) , ((int)random(0,255)) );
    i=i+colorDurationInSeconds;
  }
   

}
