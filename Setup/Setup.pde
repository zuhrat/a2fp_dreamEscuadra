//This class is the setup class where once we hit play, everything in this class is demonstrated

void setup() {
  size(700, 700); 
  background (-1);}

void make() {
Calendar i = new Calendar();
for (int i = 0; i<7; i++) {
     for (int j = 0; j < 7; j++) {
       Day<String> tmp = new Day<String> ("hey", null);
       i.add(tmp);
}}}

void draw() {
  int i = 0;
  int j = 0;
    for (Day<String> x : Calendar){
       //int index = i * j*10;
       rect(i*100, j*100, 100, 100);
       pushStyle();
       fill(255, 0, 0);
       //text(index, i*50+20, j*50+20);
       popStyle();
       i++;
       j++;}}