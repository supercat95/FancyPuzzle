class Puzzle4 extends Puzzle {
  
  Puzzle4() { // center piece
     super((width/2) - 25, height/3, color(#00FF00), 250, 195);
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
    correctPlace = true;
  }
} // end of subclass