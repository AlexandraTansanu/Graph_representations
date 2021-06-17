# Time serie
The map coordinates and graph representations repositories operate on .CSV files. This repository contains two exercises that read values from one or multiple .CSV files. Two of the files is split into two columns representing the X- and Y-values of graph point. 

**Difficulty level:** Beginner.

**Programming language:** Java.

**How it woks:** The programs make use of the OOP principles such that each graph point is an instance of the Point class and multiple Point objects make up a Series instance of the Series class. The timeseries exercise loads two different files, i.e., the timeseries.CSV and timeseries2.CSV. For each file, Point objects are constructed from the X- and Y-values so that the number of points will be equal to the number of rows in each file. Each file will end up being a distinct graph. The multiple timeseries exercise works differently. It only requires one file, namely the multipleseries(1).CSV file. Here, each value represents the Y- value, whereas the X- values will be established by the program to build a Point object. The number of graphs will be equal to the number of rows in the file.

> This exercise is written and animated using the Processing IDE. More information on inbuilt functions that have been used throughout the code can be found by accessing the [Processing Documentation](https://processing.org/reference/)

