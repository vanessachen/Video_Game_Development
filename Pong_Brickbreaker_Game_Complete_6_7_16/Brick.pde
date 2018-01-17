class Brick {
 
  int x;
  int y;
  color brickcolor= color(107, 120, 255);
  color brickcolor2 = color(255, 255, 255);
  color brickcolor3 = color(255,179,185);
  int bricklvl = 1;
  boolean visible = true;
  Brickbreaker brickbreaker;
  //reference arraylist ball
  ArrayList<Ball> balls;
  
  Brick(int x, int y, ArrayList<Ball> balls, int bricklvl){ //when Brick is contructed, first two vars set are int x, int y
    this.x = x;
    this.y = y;
    this.balls = balls;
    this.bricklvl = bricklvl;
    println(bricklvl);
  }
  
  boolean checkbrick_hit(){
    boolean hit = false;
      if (this.visible){
        if (bricklvl == 1){
          fill(brickcolor);
        }
        else if (bricklvl == 2){
          fill(brickcolor2);
        }
        else if (bricklvl == 3){
          fill(brickcolor3);
        }
        rect(this.x, this.y, 40, 35);
        for (Ball ball : balls){
          if ((playing_State == 3) && (bricklvl == 1)) {
            if (ball.x > this.x && ball.x < this.x+40 && ball.y > this.y && ball.y < this.y+35) { //checking if ball has hit brick
              ball.yspeed=-ball.yspeed;
              hit = true;
              visible=false;
            }
          }
          else if ((playing_State == 3) && (bricklvl == 2)){
            if (ball.x > this.x && ball.x < this.x+40 && ball.y > this.y && ball.y < this.y+35) { //checking if ball has hit brick
              ball.yspeed=-ball.yspeed;
              hit = true;
              bricklvl = 1;
            }
          }
          else if ((playing_State == 3) && (bricklvl == 3)){
            if (ball.x > this.x && ball.x < this.x+40 && ball.y > this.y && ball.y < this.y+35) { //checking if ball has hit brick
              ball.yspeed=-ball.yspeed;
              hit = true;
              bricklvl = 2;
            }
          }
        }
      }
    return hit;
  }
  
  void display(){
  }
/*  
    for(var index = 0; index<bricks; index++){

//this is when the bricks are visible
                if (brickvisible[index]){
                    rect(brickX[index], brickY[index], 40, 35); //drawing the bricks
//this will make the bricks not visible if the ball touches it or goes within it only if they are visible
                    if (x > brickX[index]&&x < brickX[index]+40 && y > brickY[index] && y < brickY[index]+35) {
                    yspeed=-yspeed;
                    brickvisible[index]=false;
                    bscore=bscore+1;
                    }
                }
            }
           */
}