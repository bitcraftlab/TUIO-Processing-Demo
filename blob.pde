
// callbacks for when blobs are added, updated or removed

void addTuioBlob(TuioBlob b) {
  println(
    "add blb",
    b.getBlobID(),
    "(" + b.getSessionID() + ") ",
    b.getX(),
    b.getY(),
    b.getAngle(),
    b.getWidth(),
    b.getHeight(),
    b.getArea()
  );
}

void updateTuioBlob (TuioBlob b) {
  println(
    "set blb",
    b.getBlobID(),
    "(" + b.getSessionID() + ")",
    b.getX(), 
    b.getY(), 
    b.getAngle(),
    b.getWidth(),
    b.getHeight(),
    b.getArea(),
    b.getMotionSpeed(),
    b.getRotationSpeed(),
    b.getMotionAccel(),
    b.getRotationAccel()
  );
}

void removeTuioBlob(TuioBlob b) {
  println(
    "del blb",
    b.getBlobID(),
    " (" + b.getSessionID() + ")"
  );
}


void drawBlobs() {
     
  for (TuioBlob b : tuioClient.getTuioBlobList()) {
     
     stroke(0, 255, 0);
     fill(200, 255, 200);
     
     int x = b.getScreenX(width);
     int y = b.getScreenY(height);
     int w = b.getScreenWidth(width);
     int h = b.getScreenHeight(height);
     float ang = b.getAngle();
     
     pushMatrix();
     translate(x, y);
     
     rotate(ang);
     ellipse(0, 0, w, h);
     popMatrix();
     
     int id = b.getBlobID();
     fill(0);
     text(id, x, y);
     
   }
   
}