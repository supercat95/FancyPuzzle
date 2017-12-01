//switch cases for game state- welcome, controls, play, win, lose
//keyPressed() to have player change game state

//puzzle
//some sort of threats- cat head peers from edges and knocks pieces out of place
//timer and scoreboard

//arrows work with "switch(keyCode)", not keyPressed(): UP, RIGHT, DOWN, LEFT

//PSEUDOCODE, PSEUDOCODE, PSEUDOCODE

/* Joy Bates
 // Assignment 8
 // Final Game- Fancy Puzzle
 */

int state;
Puzzle puzzles[] = new Puzzle[9];
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

  //println(state);
}

void gameState(int state) {
  switch(state) {
  case 0: // welcome screen
    {
      String welcome = "Welcome to the Fancy Puzzle Game!";
      textSize(50);
      textAlign(CENTER);
      text(welcome, width/25, height/5, 450, 450);
      buttons();
      state = instructionsOrPlay();
      break;
    }
  case 1: // instructions
    { 
      textSize(50);
      text("How To Play", width/2, height/3);
      buttons();
      state = instructionsOrPlay();
      break;
    }
  case 2: // play mode
    { 
      puzzlesAppear();
      break;

      //username = "person's name";
      //text(username, width/2, height/2);
    }
  case 3: // end screen
    {
      // show scoreboard
      break;
    }
  case 4: // lose screen
    {
      // show scoreboard 
      break;
    }
  case 5: // reset puzzle
    {
      break;
    }
  }
}


void puzzlesAppear() {
  fill(255);
  stroke(#898787);
  puzzles[4].appear(); // stationary center piece
  for (int i = 0; i < 4; i ++) {
    puzzles[i].xPos = (100*i) + 50; // increments of 100 starting at x = 50
    puzzles[i].yPos = (height - (height/3));
    puzzles[i].appear();
  }
  for (int i = 5; i < 9; i ++) {
    puzzles[i].xPos = (100*(i-4)); // increments of 100 starting at x = 100
    puzzles[i].yPos = (height - (height/5) + 25);
    puzzles[i].appear();
  }
}

    void buttons() {
      textSize(width/25);
      fill(255);
      rect(width/20, height-100, width/2.5, width/10, 10); // left button
      rect(width/1.8, height-100, width/2.5, width/10, 10); // right button
      fill(0);
      text("Instructions", width/4, height-70);
      text("Play", width/1.33, height-70);
    }

    void win() {
    }

    void lose() {
    }

    void scoreboard() { // username and completion time (or fail)
    }

    int instructionsOrPlay() {
      if (mousePressed) {
        if ((mouseX >= width/20 && mouseX <= ((width/2.5) + (width/20))) && (mouseY >= (height-100) && mouseY <= ((height/1.8) + (height-100)))) {
          state = 1; // instructions mode
        } else {
          if ((mouseX >= width/1.8 && mouseX <= ((width/2.5) + (width/1.8))) && (mouseY >= (height-100) && mouseY <= ((height/1.8) + (height-100)))) {
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