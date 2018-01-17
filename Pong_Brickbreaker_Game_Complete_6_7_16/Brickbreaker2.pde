class Brickbreaker2 extends Brickbreaker {
  
  Brickbreaker2 (ArrayList<Ball> balls){
    super(balls, 2); // 2 = bricklevel
  }
  
  boolean changetobrick_level3 (){
    boolean all_invisible = true;
    for (Brick brick : bricks){
        if (brick.visible == true){
          all_invisible = false;
          break;
        }
    }
      return all_invisible;
  }
  
}