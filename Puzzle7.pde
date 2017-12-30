class Puzzle7 extends Puzzle {
  
  Puzzle7() { // bottom right
    super(((width/5)*3), (height - (height/5) + 25), color(255), 250, 241);
  }
  
  void appear() {
    super.appear();
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