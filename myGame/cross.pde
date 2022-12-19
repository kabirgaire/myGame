boolean crossing=false;

void cross(){
  
//pause&play method
  if(crossing){

    line(mouseX,0,mouseX,height);
    line(0,mouseY,width,mouseY);
    stroke(255);
    text("X:"+mouseX+" Y:"+mouseY,140,50);
  }
}
