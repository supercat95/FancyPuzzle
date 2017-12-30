class Puzzle2 extends Puzzle {
  
  Puzzle2() { // bottom left
    super(((width/5)*2) + 50, (height -(height/3)), color(255), 200, 241);
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
    vertex(xPos + 40, yPos + 15);
    vertex(xPos + 40, yPos + 35);
    vertex(xPos + 50, yPos + 35);
    vertex(xPos + 50, yPos + 50);
    vertex(xPos, yPos + 50);
    vertex(xPos, yPos);
    endShape();
  }
  
  void correctPlace() {
    super.correctPlace();
  }
} // end of subclass