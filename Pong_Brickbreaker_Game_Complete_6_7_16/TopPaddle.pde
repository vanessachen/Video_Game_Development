class TopPaddle {
  int rectx=150;
  int recty=10;
  
  void toppaddle_setup(){
    fill(183, 255, 173);
    rect(rectx,recty,100,15);
  }
  
  void ballbounceofftop_paddle(){
    for (Ball ball : balls){
      if (ball.x > rectx && ball.x < rectx + 100 && ball.y > recty && ball.y < recty + 15){
        ball.yspeed=-ball.yspeed;
      }
    }
  }
  //i am so confused please work work work work work....work work work work work
  void toppaddle_control(){
    if (keyPressed && key == 'a'){
        rectx = rectx-5;
    }
    if (keyPressed && key =='f'){
        rectx = rectx+5;
    }
  }
  
  void display (){
    toppaddle_setup();
    ballbounceofftop_paddle();
    toppaddle_control();
  }
 
}