  //string s = "w or space to jump";
void buttonDisplay(){

  fill(buttonDisplayBoxColor);
  rect(0,height-margin,width,margin);
  
  fill(0, 408, 612, 816);
  textSize(textSize);
  text(  "w or space to jump", 50 , ( height - ( margin / 2) ) );
}
