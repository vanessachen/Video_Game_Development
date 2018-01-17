class Brickbreaker {
  
  int bscore=0;
  int lives=5;
  boolean endofgame=false;
  int level = 1;
  ArrayList<Brick> bricks;
  int numbricks=40;
  //reference arraylist ball
  ArrayList<Ball> balls;
  int bricklevel;
  
  Brickbreaker(ArrayList<Ball> balls, int bricklevel) {
    this.balls = balls;
    this.bricklevel = bricklevel;
    println ("brickbreaker is starting");
  }
  
  void background_setup(){
    background(124, 235, 176);
    fill(13, 196, 247);
  }
  
  void score_setup(){
    textSize(12);
    fill(181, 5, 250);
    text("Score :" +bscore,10,height-15);
    text("Lives :" +lives, width-50, 375);
  }
  
  void ballbrick_reset(){ //400 is the bottom
    for (Ball ball : balls){
      if (ball.y > height) {
        ball.pause();
        lives=lives-1;
      }
      if (ball.y < 0) {
        ball.yspeed= - ball.yspeed;
      }
    }
  }           
  
  void update_score (boolean hit) {
    if (hit==true){
      this.bscore = this.bscore+1;
    }
  }
  void lives_check(){
    if(lives==0){
      playing_State = 6;
    }
  }
    
  void endof_game(){
      background(255, 255, 255);
      background(153, 246, 255);
      fill(255, 0, 0);
      textSize(55);
      text("GAME OVER", 40,150);
      fill(0, 217, 255);
      textSize(25);
      fill(100,149,237);
      text("Score :" +bscore, 150, 225);
//I don't know if this part will work right.
      fill(208, 178, 247);
      rect(130,300,150,65);
      fill(89, 0, 255);
      text("Restart G",150,340);
  }
  
  void check_button(){
    if (mousePressed && mouseX > 130 && mouseX < 280 && mouseY > 300 && mouseY < 365){
        lives = 5;
        playing_State = 0;
    }
  }
  
  boolean changetobrick_nextlevel (){
    boolean all_invisible = true;
    for (Brick brick : bricks){
        if (brick.visible == true){
          all_invisible = false;
          break;
        }
    }
    return all_invisible;
  }
  
  void initialize (int bricklevel ){
    this.bricklevel = bricklevel;
    bricks = new ArrayList<Brick>();
    for(int index = 0; index<numbricks; index++){
      bricks.add(new Brick((index%10)*40, round(index/10)*35, balls, bricklevel - index%bricklevel)); //defining what to put into bricks array, last argument define bricklvl
      //doesn't need brick.visible, because it was done in Brick class
    }
    for (Ball ball : balls){
       ball.pause();
    }
  } 
  
  void display(){
    background_setup();
    score_setup();
    ballbrick_reset();
    for(Brick brick : bricks){ //for every brick in array bricks, call it brick, and in the for loop, display brick
      brick.display();
      update_score(brick.checkbrick_hit()); //calling checkbrick_hit while also using return hit value
    }
    lives_check();
    //endof_game();
  }

}