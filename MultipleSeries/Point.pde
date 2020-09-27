class Point {
  int x; // if the interval is not regular
  int y;
  int red;
  int green;
  int blue;
  
  Point(int Xcoord, int Ycoord, int r, int g, int b) {
    this.x = Xcoord;;
    this.y = Ycoord;
    this.red = r;
    this.green = g;
    this.blue = b;
  }
  
  void draw() {
    fill(this.red, this.green, this.blue);
    stroke(this.red, this.green, this.blue);
    ellipse(this.x, this.y, PSIZE, PSIZE); 
  }
}
