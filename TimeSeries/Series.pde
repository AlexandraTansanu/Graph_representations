class Series {
  Point [] Points;
  int numPoints;
  int red;
  int green; 
  int blue;
 
  Series(String filename, int r, int g, int b) {
    this.red = r;
    this.green = g;
    this.blue = b;
    
    String [] fileLines = loadStrings(filename); // read in the .CSV file
    this.numPoints = fileLines.length;
    this.Points = new Point[this.numPoints];
    
    for(int i = 0; i < this.numPoints; i++) {
     String thisPoint = fileLines[i];
     
     // split each row in X- and Y- Coordinates
     int [] coords = int(split(thisPoint, ","));
     int thisX = coords[0];
     int thisY = coords[1];
     
     // create a Point object using these Coordinates and the established color
     this.Points[i] = new Point(thisX, thisY, this.red, this.green, this.blue);
    }
  }
  
  void draw() {
    // for each point...
    for(int i = 0; i < this.numPoints; i++) {
     if(i < this.numPoints - 1) { // .. up to last-but-one point
       stroke(this.red, this.green, this.blue);
       
       // draw line from current point to NEXT point
       Point thisPoint = this.Points[i];
       Point nextPoint = this.Points[i + 1];
       
       line(thisPoint.x, thisPoint.y, nextPoint.x, nextPoint.y);
     }
     
     // draw the current point
     this.Points[i].draw();
    }
  }
}
