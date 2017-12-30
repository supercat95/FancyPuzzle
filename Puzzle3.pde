class Puzzle3 extends Puzzle {
  
  Puzzle3() { // top right
    super(((width/5)*3) + 50, (height - (height/3)), color(255), 300, 141);
  }
  
  void appear() {
    super.appear();
    beginShape();
    vertex(xPos, yPos);
    vertex(xPos + 50, yPos);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos + 35, yPos + 50);
    vertex(xPos + 35, yPos + 60);
    vertex(xPos + 15, yPos + 60);
    vertex(xPos + 15, yPos + 50);
    vertex(xPos, yPos + 50);
    vertex(xPos, yPos + 35);
    vertex(xPos - 10, yPos + 35);
    vertex(xPos - 10, yPos + 15);
    vertex(xPos, yPos + 15);
    vertex(xPos, yPos);
    endShape();
  }
  
  void correctPlace() {
    super.correctPlace();
  }
} // end of subclass