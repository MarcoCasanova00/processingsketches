int numOfLoops = 0;

void setup() {
  size(400, 400);
  background(255);
  smooth();
}

void draw() {
  if (numOfLoops < 5) {
    // Set random colors for the humanoid
    fill(random(255), random(255), random(255));
    strokeWeight(2);

    // Generate random coordinates for the humanoid's body parts
    float headSize = random(40, 80);
    float bodyWidth = random(60, 100);
    float bodyHeight = random(100, 200);
    float legHeight = random(100, 200);

    // Generate random x and y coordinates
    float x = random(width);
    float y = random(height);

    // Draw the humanoid
    // Draw head
    ellipse(x, y, headSize, headSize);

    // Draw body
    rectMode(CENTER);
    rect(x, y + headSize/2 + bodyHeight/2, bodyWidth, bodyHeight);

    // Draw legs
    float legWidth = bodyWidth/4;
    float legY = y + headSize/2 + bodyHeight;
    rect(x - bodyWidth/4, legY + legHeight/2, legWidth, legHeight);
    rect(x + bodyWidth/4, legY + legHeight/2, legWidth, legHeight);

    numOfLoops++;
  }
}
