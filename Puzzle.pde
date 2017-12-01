class Puzzle {

  float xPos, yPos;
  color colour;

  Puzzle() {
    this.xPos = 0; // increments of 75 starting at x = 50
    this.yPos = 0; // 175 or (height - (height/3))
    colour = color(255);
  }
  
  Puzzle(color colour) {
    this.colour = colour;
  }
  
  Puzzle(float xPos, float yPos) { // for Puzzle4
    this.xPos = xPos; // increments of 75 starting at x = 110
    this.yPos = yPos;
    this.colour = color(255);
  }

  void appear() {
  }
  
  void puzzleDragged() {
    this.xPos = pmouseX;
    this.yPos = pmouseY;
    appear();
  }
} // end of superclass definition