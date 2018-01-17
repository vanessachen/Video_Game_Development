class Ball {
  int x = 200;
  int y= 200;
  int xspeed;
  int yspeed;
  
  Ball(int xspeed, int yspeed) {
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }
  void pause (){
    x=width/2;
    y=height/2;
    xspeed=0;
    yspeed=0;
  }
  void unpause (int xspeed, int yspeed){
    this.xspeed = xspeed;
    this.yspeed = yspeed;
    
  }
  
//this is making the ball bounce off the left and right of the screen
  void ballbounceoff_screen(){
    if (x > width || x < 0) {
        xspeed=-xspeed;
    }
  }
  
//continuing the movement of the ball
  void update_movement(){
    x +=xspeed;
    y +=yspeed;
  }
  
  void display_ball(){
    fill(13, 196, 247);
    ellipse(x,y,20,20); 
  }
  
  void ball_continue(){
    if (keyPressed && key =='r'){
      for (Ball ball : balls){
        ball.unpause(pong.xspeed, pong.yspeed);
      }
    }
  }
  void ballbounceoffbottom_paddle(){
    if (x > mouseX && x<mouseX+bottompaddle.bottompaddleXsize && y > bottompaddle.bottompaddleYpos && y<bottompaddle.bottompaddleYpos + bottompaddle.bottompaddleYsize){
      yspeed=-yspeed;
    }
  }
  
  void display(){
    display_ball();
    ballbounceoff_screen();
    ball_continue();
    update_movement();
    ballbounceoffbottom_paddle();
  }
}