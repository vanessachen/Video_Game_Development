//playing_State = 0;

class MainMenu {
  
  void background_setup(){
    background(204,255,240);
    //background(153, 246, 255);
    fill(33, 217, 189);
    textSize(35);
    text("Welcome to", 90,100);
    text("Brickbreaker and Pong!", 5,150);
    fill(0, 217, 255);
    textSize(25);
    fill(100,149,237);
    text("Choose your Game", 75, 225);
//I don't know if this part will work right.
    textSize(20);
    fill(208, 178, 247);
    rect(25,300,150,65); //pong button
    fill(89, 0, 255);
    text("Pong",75,340);
    fill(208, 178, 247);
    rect(width-175,300,150,65); //brickbreaker button
    fill(89, 0, 255);
    text("Brickbreaker",240,340);
  }
  
  void check_buttons(){
    if (mousePressed && mouseX > 25 && mouseX < 25+150 && mouseY > 300 && mouseY < 365){
      playing_State = 1;
    }
    if (mousePressed && mouseX > 225 && mouseX < 225+150 && mouseY > 300 && mouseY < 365){
      if (playing_State != 3){
        brickbreaker.initialize(1);
      }
      playing_State = 3;
    }
  }
  
  void display(){
    background_setup();
  }
  
}