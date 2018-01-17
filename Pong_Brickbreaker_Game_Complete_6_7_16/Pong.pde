import java.util.Iterator;

class Pong {
  TopPaddle toppaddle;
  int xspeed = 3;
  int yspeed = 3;
  int rectx=150;
  int recty=10;
  
  void background_setup(){
      background(124, 235, 176);
      fill(247, 255, 0);
  }
  
  void add_newball() {
    if (key =='e'){
      balls.add(new Ball(xspeed, yspeed));
    }
  }
  
  void deleting_newball(){
    if ((key =='d') && (balls.size() != 1)){
      balls.remove(1);
    }
  }

  void score_setup(){
    fill(187, 0, 255);
    textSize(12);
    text("Player 1",345,375); 
    text("Player 2", 10,25); 
    fill(0, 68, 255);
    text("Score :" +S1,10,375); 
    text("Score :" +S2,340,25);
  }
  void checkiflast_ball(){
    Iterator<Ball> ballIter = balls.iterator();
    if (balls.size() != 1) {
      ballIter.remove();
    }
    else {
      ball.pause();
    }
  }
  void score_update(ArrayList<Ball> balls){
    Iterator<Ball> ballIter = balls.iterator();
    while (ballIter.hasNext()){
      Ball ball = ballIter.next();
      if (ball.y > height) {
        S2 = S2+1;
        if (balls.size() != 1) {
          ballIter.remove();
        }
        else {
          ball.pause();
        }
      }
      if (ball.y < 0) {
        S1 = S1+1;
        if (balls.size() != 1) {
          ballIter.remove();
        }
        else {
          ball.pause();
        }
      }
    }
  }

  void ballpong_reset(){
    for (Ball ball : balls){
       if ((ball.y > height || ball.y < 0) && clearscreen == false) {
            ball.pause();
        }
     }
   }
   
   void initialize(){
     for (Ball ball : balls){
       ball.pause();
     }
     toppaddle = new TopPaddle();
   }
   
   void display(){
     background_setup();
     score_setup();
     score_update(balls);
     ballpong_reset();
     toppaddle.display();
   }
}