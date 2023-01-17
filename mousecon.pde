void mousePressed(){
  b.jump(); //どこを押しても
    click = click + 1;
  intro=false;
  if(end==false){
    reset();
    base_time = millis();
    click = 1;
    loop();
  }
}
