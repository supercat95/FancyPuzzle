class Puzzle8 extends Puzzle {

  Puzzle8() {
    this.colour = int(random(color(255, 255, 255)));
  }

  void appear() {
    beginShape();
    vertex(xPos, yPos);
    vertex(xPos + 50, yPos);
    vertex(xPos + 50, yPos + 15);
    vertex(xPos + 60, yPos + 15);
    vertex(xPos + 60, yPos + 35);
    vertex(xPos + 50, yPos + 35);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos + 35, yPos + 50);
    vertex(xPos + 35, yPos + 35);
    vertex(xPos + 15, yPos + 35);
    vertex(xPos + 15, yPos + 50);
    vertex(xPos, yPos + 50);
    vertex(xPos, yPos);
    endShape();
  }
} // end of subclass