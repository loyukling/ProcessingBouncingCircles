int rad = 40;        // Width of the shape
int size = 80;       // size of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 3.8;  // Speed of the shape
float yspeed = 3.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom



void setup() 
{
  size(500, 500); //set frame size
  noStroke(); //no outline for the shape
  frameRate(50); //movement of the circle
  ellipseMode(CORNER); //Start position
  
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
}

void draw() 
{
  background(color(#F6F6EB));
  
  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
 

  // Draw the shape
  fill(#D7ECD9); //added pastel blue
  ellipse(xpos, ypos, size, size);
  fill(#D5D6EA); //added pastel green
  ellipse(ypos, ypos, size, size);

}
