
// Simplified + beuatified version of the TUIO demo
// @bitcraftlab 2017

// also shows the video stream (experimental)

import TUIO.*;
TuioProcessing tuioClient;

PFont font;

void setup() {
  
  frameRate(60);
  
  // size(1280, 720);
  fullScreen();
  
  noCursor();
  noStroke();
  fill(0);
  
  font = createFont("", 12);
  textFont(font); 
  tuioClient  = new TuioProcessing(this);
  
  setupVideo();
  
}


void draw() {
  
  background(255);
  
  drawVideo();
  drawBlobs();
  drawCursors();
  drawObjects();
  drawGrid();
  
}

void keyPressed() {
  saveFrame("screenshot.png"); 
}


void refresh(TuioTime t) {
  println(
    "frame", 
    "#" + t.getFrameID(), 
    " (" + t.getTotalMilliseconds() + ")"
  );
}