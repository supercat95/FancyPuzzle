class Puzzle8 extends Puzzle {

  Puzzle8() { // top left
    super(((width/5)*4), (height - (height/5) + 25), color(255), 200, 141);
  }

  void appear() {
    super.appear();
    beginShape();
    vertex(xPos, yPos);
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
    
    //beginShape();
    //vertex(xPos, yPos);
    //vertex(xPos + width/10, yPos); // 50 = height/10
    //vertex(xPos + width/10, yPos + height/20 + height/10); // 10 + 10/2
    //vertex(xPos + width/10 + width/50, yPos + height/50 + height/100); // 10 + 10/2
    //vertex(xPos + width/10 + width/50, yPos + height/20 + height/50); // 50/2 + 10
    //vertex(xPos + width/10, yPos + height/20 + height/50); // 50/2 + 10
    //vertex(xPos + width/10, yPos + height/10); // 50
    //vertex(xPos + width/20 + width/50, yPos + height/10); // 50
    //vertex(xPos + width/20 + width/50, yPos + height/20 - height/50); // 50 - 10
    //vertex(xPos + width/50 + width/100, yPos + height/20 - height/50); // 50 - 10
    //vertex(xPos + width/50 + width/100, yPos + height/10); // 50
    //vertex(xPos, yPos + height/10); // 50
    //vertex(xPos, yPos);
    //endShape();
  }
  
  void correctPlace() {
    super.correctPlace();
  }
} // end of subclass