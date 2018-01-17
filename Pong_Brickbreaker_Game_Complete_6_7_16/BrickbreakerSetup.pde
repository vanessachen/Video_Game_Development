class BrickbreakerSetup {
  boolean changedto_brickbreakersetup = false;
  boolean checkplaybutton_pressed = false;
  boolean playing_brickbreaker = false;
  
  void background_setup(){
    textSize(25);
    text("Time for Brickbreaker!",75,200);
    fill(5, 250, 238);
    rect(130,300,150,65);
    fill(0, 21, 255);
    text("Play!",175,340); 
  }
  
  void initialize(){
    background(245, 191, 245);
  }
  
  void display(){
    background_setup();  
  }
  
}