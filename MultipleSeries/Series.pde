class Series {
  Point [] Points;
  int numPoints;
  int red;
  int green; 
  int blue;
 
  Series(String coords) {
    // establish a random color for this time serie
    this.red = (int)random(256);
    this.green = (int)random(256);
    this.blue = (int)random(256);
    
    // split the string into actual Y- Coordinates and initialize the array of points
    int [] Ycoordinates = int(split(coords, ","));
    this.numPoints = Ycoordinates.length;
    this.Points = new Point[this.numPoints];
    
    
    // establish a value for the X- Coordinate
    int Xcoord = 30;
    
    for(int i = 0; i < this.numPoints; i++) {
     int Ycoord = Ycoordinates[i];
     
     // build a point object using the established Coordinates and color 
     this.Points[i] = new Point(Xcoord, Ycoord, this.red, this.green, this.blue);
     Xcoord += Xcoord; // increment X to build spacing between each point 
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
