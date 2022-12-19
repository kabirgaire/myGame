//pause&play method
int pauseRect_Xsize=600, pauseRect_Ysize=600;
int pauseRect_Xpos=100, pauseRect_Ypos = 100;
boolean looping=true;
void pause(){
  if(looping){start=false;looping=false;}else{ start=true;looping=true;}
  
  //pause rect box
  fill(50);
  rect(pauseRect_Xpos,pauseRect_Ypos,pauseRect_Xsize,pauseRect_Ysize);

  // Continue Button
  textSize(50);  
  textAlign(CENTER);
  fill(0, 408, 612, 816);
  
  text("Continue", pauseRect_Xpos + (pauseRect_Xsize/2) ,
                               pauseRect_Ypos + (pauseRect_Ysize/2) );
  textAlign(LEFT);
  
}
