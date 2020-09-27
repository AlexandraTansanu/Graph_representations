final int PSIZE = 8;

Series mySerie;
Series otherSerie;

void setup() {
  size(320,320);
  ellipseMode(CENTER);
  
  /* The series class only needs the name of the file from which to read and
  RGB values in order to color the time series*/
  mySerie = new Series("../timeseries.csv", 255, 0, 0);
  otherSerie = new Series("../timeseries2.csv", 0, 0, 255);
}

void draw() {
 background(220);
 
 mySerie.draw();
 otherSerie.draw();
}
