class Cat {

  float xPos, yPos;
  color colour;
  Puzzle[] puzzle = new Puzzle[9];

  Cat() {
    this.xPos = width/2;
    this.yPos = height;
  }

  Cat(float xPos, float yPos, color colour) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.colour = colour;
  }

  void drawCat() {
    ellipse(100, 100, 50, 50); // use variables
  }

  void appear() { // cats slowly peer from any edge of window
  }

  void hairball() { // bad cat shoots . . .
  }

  void purr() { // good cat purrs 
  }
  
  void puzzleReset() { // . . . a puzzle piece out of place 
    
  }

  void initializePuzzles() {
    //puzzle[0] = Puzzle1;
  }
} // end of superclass definition