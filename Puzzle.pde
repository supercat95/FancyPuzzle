class Puzzle {

  int increment; // for initial x- values
  float xPos, yPos; // for shape vertices
  float xPosition, yPosition; // variable coordinates
  color colour;

  int vertexX, vertexY; // temporary variables

  // for drag-and-drop functionality
  boolean puzzleSelect;
  boolean puzzleDeselect;

  boolean correctPlace;

  Puzzle() {
    this.xPos = 0;
    this.yPos = 0; 
    this.xPosition = 0;
    this.yPosition = 0;
    colour = color(255);

    this.vertexX = 0;
    this.vertexY = 0;

    this.puzzleSelect = false;
    this.puzzleDeselect = false;

    this.correctPlace = false;
  }

  Puzzle(float xPos, float yPos, color colour, int vertexX, int vertexY) {
    this.increment = 1;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xPosition = 0;
    this.yPosition = 0;
    this.colour = colour;

    this.vertexX = vertexX;
    this.vertexY = vertexY;

    this.puzzleSelect = false;
    this.puzzleDeselect = false;

    this.correctPlace = false;
  }

  void appear() {
    fill(this.colour);
  }

  void correctPlace() {
    if (this.xPosition == this.vertexX && this.yPosition == this.vertexY) {
      this.correctPlace = true;
      if (this.correctPlace == true) {
        this.puzzleSelect = false;
        this.puzzleDeselect = false;
        this.colour = color(0,255,0);
      }
    }
  }
} // end of superclass definition