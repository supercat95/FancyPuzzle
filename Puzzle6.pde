class Puzzle6 extends Puzzle {

  Puzzle6() {
    super();
  }

  void appear() {
    beginShape();
    vertex(xPos, yPos);
    vertex(xPos + 15, yPos);
    vertex(xPos + 15, yPos - 10);
    vertex(xPos + 35, yPos - 10);
    vertex(xPos + 35, yPos);
    vertex(xPos + 50, yPos);
    vertex(xPos + 50, yPos + 15);
    vertex(xPos + 60, yPos + 15);
    vertex(xPos + 60, yPos + 35);
    vertex(xPos + 50, yPos + 35);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos + 35, yPos + 50);
    vertex(xPos + 35, yPos + 40);
    vertex(xPos + 15, yPos + 40);
    vertex(xPos + 15, yPos + 50);
    vertex(xPos, yPos + 50);
    vertex(xPos, yPos);
    endShape();
  }
} // end of subclass