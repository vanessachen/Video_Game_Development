class BottomPaddle {
  
  int bottompaddleYpos = height-30;
  int bottompaddleXsize = 100;
  int bottompaddleYsize = 15;
  
  void bottompaddle_setup(){
    fill(183, 255, 173);
    rect(mouseX,bottompaddleYpos,bottompaddleXsize,bottompaddleYsize);
  }
  
  void display(){
    bottompaddle_setup();
  }
  
}