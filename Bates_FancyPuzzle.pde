/* 
 Joy Bates
 Assignment 8
 Final Game- Fancy Puzzle
 */

int state;
Puzzle puzzles[] = new Puzzle[9];
boolean puzzleSelect;
//boolean correctPlaces = true;
//String username;

void setup() {
  size(500, 500);
  background(0);

  initializePuzzles();
}

void draw() {
  background(0);
  gameState(state);

  fill(255);
  textSize(10);

  text(mouseX, 10, 10);
  text(mouseY, 10, 20);
}

void gameState(int state) {
  switch(state) {
  case 0: // welcome screen
    {
      String welcome = "Welcome to the Fancy Puzzle Game!";
      textSize(50);
      textAlign(CENTER);
      text(welcome, width/25, height/5, 450, 450);
      startButtons();
      state = instructionsOrPlay();
      break;
    }
  case 1: // instructions
    { 
      fill(255);
      textSize(50);
      text("How To Play", width/2, height/3);
      startButtons();
      state = instructionsOrPlay();
      String instruction1 = "Click and drag the pieces at the bottom of the screen.";
      String instruction2 = "While dragging, do not allow cursor to cross over another piece.";
      String instruction3 = "If you mess up, click Reset Puzzle.";
      fill(255);
      textSize(15);
      text(instruction1, width/2, height/3 + height/10);
      text(instruction2, width/2, height/3 + height/6);
      text(instruction3, width/2, height/3 + height/4);
      break;
    }
  case 2: // play mode
    {
      puzzlesAppear();
      for (int i = 0; i < puzzles.length; i ++) {
        if (mouseX >= puzzles[i].xPos && mouseX <= puzzles[i].xPos + 50 && mouseY >= puzzles[i].yPos && mouseY <= puzzles[i].yPos + 50) {
          puzzles[i].puzzleSelect = true;
        } else {
          puzzles[i].puzzleSelect = false;
        }
      }
      state = endScreen();
      break;
    }
  case 3: // win/lose screen and reset puzzle
    {
      background(0);
      // show scoreboard
      textSize(20);
      textAlign(CENTER);
      text("Congratulations! You deserve a cookie.", width/2, height/7);
      //text("Yawn. How about a fresh start?", width/2, height/7);
      resetButton();
      state = endScreen();
      break;
    }
  }
}

void puzzlesAppear() {
  fill(255);
  stroke(#898787);
  for (int i = 0; i < puzzles.length; i ++) {
    puzzles[i].appear();
  }
}

void startButtons() {
  textSize(width/25);
  fill(255);
  rect(width/20, height-100, width/2.5, width/10, 10); // left button
  rect(width/1.8, height-100, width/2.5, width/10, 10); // right button
  fill(0);
  text("Instructions", width/4, height-70);
  text("Play", width/1.33, height-70);
}

void resetButton() {
  textSize(width/25);
  fill(255);
  rect(width/10, height-100, width/1.25, width/7.5, 10);
  fill(0);
  text("Reset Puzzle", width/2, height-60);
}

int endScreen() {
  for (int i = 0; i < puzzles.length; i++) {
    if (puzzles[0].correctPlace == true && puzzles[1].correctPlace == true && puzzles[2].correctPlace == true
      && puzzles[3].correctPlace == true && puzzles[4].correctPlace == true && puzzles[5].correctPlace == true
      && puzzles[6].correctPlace == true && puzzles[7].correctPlace == true && puzzles[8].correctPlace == true) {
      state = 3;
    } else {
      break;
    }
  }
  if (mousePressed) {
    if ((mouseX >= width/10 && mouseX <= ((width/1.25) + (width/10))) && (mouseY >= (height-100) && mouseY <= ((height/1.8) + (height-100)))) { // left button
      state = 2; // play mode
    }
  }
  return state;
}

void scoreboard() { // username and completion time (or fail)
}

int instructionsOrPlay() {
  if (mousePressed) {
    if ((mouseX >= width/20 && mouseX <= ((width/2.5) + (width/20))) && (mouseY >= (height-100) && mouseY <= ((height/1.8) + (height-100)))) { // left button
      state = 1; // instructions mode
    } else {
      if ((mouseX >= width/1.8 && mouseX <= ((width/2.5) + (width/1.8))) && (mouseY >= (height-100) && mouseY <= ((height/1.8) + (height-100)))) { // right button
        state = 2; // play mode
      }
    }
  }
  return state;
}

void initializePuzzles() {
  puzzles[0] = new Puzzle0();
  puzzles[1] = new Puzzle1();
  puzzles[2] = new Puzzle2();
  puzzles[3] = new Puzzle3();
  puzzles[4] = new Puzzle4();
  puzzles[5] = new Puzzle5();
  puzzles[6] = new Puzzle6();
  puzzles[7] = new Puzzle7();
  puzzles[8] = new Puzzle8();
}

void mousePressed() {
  for (int i = 0; i < puzzles.length; i ++) {
    puzzles[i].correctPlace();
    if (puzzles[i].puzzleSelect == true && puzzles[i].correctPlace == false) {
      puzzles[i].puzzleDeselect = true;
    } else {
      puzzles[i].puzzleDeselect = false;
    }   
    // rotate PI/4
    if (keyPressed == true) {
      
    } else {
      puzzles[i].xPosition = mouseX;
      puzzles[i].yPosition = mouseY;
    }
  }
}

void mouseDragged() {
  for (int i = 0; i < puzzles.length; i ++) {
    puzzles[i].correctPlace();
    if (puzzles[i].puzzleSelect == true && puzzles[i].correctPlace == false) {
      puzzles[i].puzzleDeselect = true;
      puzzles[i].xPos = mouseX - 25;
      puzzles[i].yPos = mouseY - 25;
    } else {
      puzzles[i].puzzleDeselect = false;
    }
  }
}

void mouseReleased() {
  for (int i = 0; i < puzzles.length; i ++) {
    puzzles[i].puzzleDeselect = false;
    puzzles[i].correctPlace();
    if (puzzles[i].correctPlace == true) {
      puzzles[i].puzzleSelect = false;
    }
    if (puzzles[i].correctPlace == true) {
      puzzles[i].puzzleDeselect = false;
    }
  }
}