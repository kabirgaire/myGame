void bottom(){

  fill(buttomBoxColor);
  rect(0,height-margin,width,margin);
  
  fill(0, 408, 612, 816);
  textSize(textSize);
  text(  "W or SPACE to Jump", 50 , ( height - ( margin / 2 ) ) );

  text(  "P to Pause/Continue", 50+200 , ( height - ( margin / 2 ) ) );

  text(  "C for Cross", 50 , ( height - ( margin / 2 ) )+20 );

  text(  "E for Something", 50+200 , ( height - ( margin / 2 ) )+20 );

  text(  "PlayTime:"+ playTime, 50+400 , ( height - ( margin / 2 ) )+20 );

}
