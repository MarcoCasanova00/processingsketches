boolean isBulbOn = false; // Flag to indicate if the bulb is on or off

void setup() {
  size(400, 400);
}

void draw() {
  background(0); // Black background

  if (isBulbOn) {
    // Bulb is on - display a bright yellow circle
    fill(255, 255, 0);
    ellipse(width/2, height/2, 200, 200);
  } else {
    // Bulb is off - display a gray circle
    fill(100);
    ellipse(width/2, height/2, 200, 200);
  }
}

void keyPressed() {
  // Toggle the bulb state when any key is pressed
  isBulbOn = !isBulbOn;
}
