class Puzzle5 extends Puzzle {

  Puzzle5() {
    super();
  }

  void appear() {
    beginShape();
    vertex(xPos, yPos);
    vertex(xPos + 15, yPos);
    vertex(xPos + 15, yPos + 10);
    vertex(xPos + 35, yPos + 10);
    vertex(xPos + 35, yPos);
    vertex(xPos + 50, yPos);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos, yPos + 50);
    vertex(xPos, yPos + 35);
    vertex(xPos + 10, yPos + 35);
    vertex(xPos + 10, yPos + 15);
    vertex(xPos, yPos + 15);
    vertex(xPos, yPos);
    endShape();
  }
} // end of subclass