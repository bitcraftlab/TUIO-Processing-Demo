
// callbacks for when cursors are added, updated or removed

void addTuioCursor(TuioCursor c) {
  println(
    "add cur", 
    c.getCursorID(), 
    "(" + c.getSessionID() + ")", 
    c.getX(), 
    c.getY()
    );
}

void updateTuioCursor (TuioCursor c) {
  println(
    "set cur", 
    c.getCursorID(), 
    "(" + c.getSessionID() + ")", 
    c.getX(), 
    c.getY(), 
    c.getMotionSpeed(), 
    c.getMotionAccel()
    );
}

void removeTuioCursor(TuioCursor tcur) {
  println(
    "del cur ", 
    tcur.getCursorID(), 
    "(" + tcur.getSessionID()+ ")" 
    );
}

// display cursors

void drawCursors() {  

  for (TuioCursor c : tuioClient.getTuioCursorList()) {

    // draw a line connecting the points of the path
    stroke(0, 0, 255);
    noFill();
    beginShape();
    for(TuioPoint p : c.getPath()) {
      vertex(p.getScreenX(width), p.getScreenY(height));
    }
    endShape();
    
    // draw the cursor
    int w  = c.getScreenX(width);
    int h  = c.getScreenY(height);
    int d  = 15;

    stroke(200, 200, 255);
    fill(200, 200, 255);
    ellipse(w, h, d, d);
    
    // draw the id on top
    int id = c.getCursorID();
    fill(0);
    text(id, w - 5, h + 5);

  }
}