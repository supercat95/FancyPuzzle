class Puzzle1 extends Puzzle {

  Puzzle1() { // top center piece
    super((width/5) + 50, (height -(height/3)), color(255), 250, 141);
  }

  void appear() {
    beginShape();
    vertex(xPos, yPos);
    vertex(xPos + 50, yPos + 0);
    vertex(xPos + 50, yPos + 15);
    vertex(xPos + 40, yPos + 15);
    vertex(xPos + 40, yPos + 35);
    vertex(xPos + 50, yPos + 35);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos + 35, yPos + 50);
    vertex(xPos + 35, yPos + 40);
    vertex(xPos + 15, yPos + 40);
    vertex(xPos + 15, yPos + 50);
    vertex(xPos, yPos + 50);
    vertex(xPos, yPos + 35);
    vertex(xPos + 10, yPos + 35);
    vertex(xPos + 10, yPos + 15);
    vertex(xPos, yPos + 15);
    vertex(xPos, yPos);
    endShape();
  }
  
  void correctPlace() {
    super.correctPlace();
  }
} // end of subclass