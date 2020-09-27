 final int PSIZE = 8;

Series [] TimeSeries; // an array is needed since each line from the .CSV file is a separate time serie
int numSeries;

void setup() {
  size(320,320);
  ellipseMode(CENTER);
  
  String [] fileLines = loadStrings("../multipleseries(1).csv");
  numSeries = fileLines.length;
  TimeSeries = new Series[numSeries];
 
 // split each line from the file into a separate time serie
  for(int i = 0; i < numSeries; i++) {
    String coords = fileLines[i];
    TimeSeries[i] = new Series(coords); // a serie only receives a string which contains the Y- Coordinates 
  }
}

void draw() {
 background(220);
 
 for(int i = 0; i < numSeries; i++) {
   TimeSeries[i].draw();
 }
}
