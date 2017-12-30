class Puzzle0 extends Puzzle {

  Puzzle0() { // middle right piece
    super(50, (height- (height/3)), color(255), 300, 191);
  }

  void appear() {
    super.appear();
    beginShape(); // vertices originate upper left corner and go clockwise
    vertex(xPos, yPos);
    vertex(xPos + 15, yPos);
    vertex(xPos + 15, yPos + 10);
    vertex(xPos + 35, yPos + 10);
    vertex(xPos + 35, yPos);
    vertex(xPos + 50, yPos);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos + 35, yPos + 50);
    vertex(xPos + 35, yPos + 60);
    vertex(xPos + 15, yPos + 60);
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