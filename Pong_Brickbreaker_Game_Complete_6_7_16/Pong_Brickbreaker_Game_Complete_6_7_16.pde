boolean paused=true;
int S1 = 0;
int S2 = 0;
boolean clearscreen=false;
//this is setting up the array for the bricks
Ball ball;
Pong pong;
BottomPaddle bottompaddle;
BrickbreakerSetup brickbreakersetup;
Brickbreaker brickbreaker;
MainMenu mainmenu;
//var ball = class Ball  
ArrayList<Ball> balls;
boolean debugtime = false;


   //clear the screen after pong, press c
  void pongclear_screen(){
    if (keyPressed && key =='c'){
      if (playing_State == 1){
        brickbreakersetup.initialize();
        println ("new brickbreakersetup");
      }
      playing_State = 2;
    }
  }


  //press b to go back to pong
  void backto_pong(){
    if (keyPressed && key =='b'){
        if (playing_State == 2 || playing_State == 3){
          playing_State = 1;
        }
    }
  }
  
  void debug () {
        for (Ball ball : balls){
          ball.x = mouseX;
          ball.y = mouseY;
        }
  }
  
  
void keyPressed() {
  //get variable to check if playing pong
  pong.add_newball();
  pong.deleting_newball();
  //debug makes ballpos = mousepos
}

void mousePressed(){ //doesn't need to be referenced 
  if (playing_State == 0){
    mainmenu.check_buttons();
  }
  else if (playing_State == 6){
    brickbreaker.check_button();
  }
  else if (playing_State == 2){
    checkplay_button();
  }
}

void checkplay_button(){ 
    if (mousePressed && mouseX > 130 && mouseX < 280 && mouseY > 300 && mouseY < 365){
        brickbreaker.initialize(1);
      playing_State = 3;
    }
}

int playing_State = 0; 

//this is setting the bricks to be visible in the beginning in brickbreaker
void setup(){
  size(400,400);
  //creating a new list with the class "Ball" and you create a new instance of this list called balls
  balls = new ArrayList<Ball>();
  //creating new ball instance and adding it in list
  mainmenu = new MainMenu();
  pong = new Pong();
  bottompaddle = new BottomPaddle();
  brickbreaker = new Brickbreaker(balls, 1);
  brickbreakersetup = new BrickbreakerSetup();
  balls.add(new Ball(pong.xspeed, pong.yspeed)); //can i make this paused, because I want the balls to start out w/o speed
  pong.initialize();
  for (Ball ball : balls){
      ball.pause();
  }
}


//these are the balls and their colors
void draw () {
    //println(playing_State); 
    if (playing_State == 0){
      mainmenu.display();
    }
    if (playing_State == 1){
      pong.display();
      pongclear_screen();
    }
    //brickbreakersetup or brickbreaker
    if (playing_State == 2 || playing_State == 3){
      backto_pong();
    }
    if (playing_State == 2){
      brickbreakersetup.display();
    }
    if (playing_State == 3){
      brickbreaker.display();
      if (brickbreaker.changetobrick_nextlevel()){ // if we are playing brickbreaker lvl 1 and the boolean changetobrick_level2 is true (all bricks are invisible) change playing state to 4 and initialize brickbreaker 2 (which is parent function)
        brickbreaker.initialize(brickbreaker.bricklevel+1); 
        println("starting level 2");
        //brickbreaker.all_invisible = false;
      }
    }
    // the only thing that really matters here is the fact that bricklevel changes to 2 (which affects how the bricks are initialized in brickbreaker)
    // color changes are determined in brick class
    //pong or brickbreaker
    if (playing_State == 1 || playing_State == 3 ){
      for (Ball ball : balls){
        ball.display();
      }
      if (keyPressed & key =='q'){
        debug ();
      }
      /*
      else {
        for (Ball ball : balls){
          ball.pause();
          ball.ball_continue();
        }
      }
      */
      bottompaddle.display();
    }
    if (playing_State == 6){
      brickbreaker.endof_game();
    }

/*
            
//this is setting up the next level
            //i need to find a way to say that all the bricks are 'invisible'
            //If(brickvisible===false){
                text("Level :" +level, 200, 375);
    }*/

};