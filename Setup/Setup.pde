//First calendar would be the month of january
Calendar X = new Calendar (1, 1, 2010);
int nbOfHorizontalLines = 5;
int nbOfVerticalLines = 7;

//Since calendar is a linked list, i am adding as many nodes (days) in the month
void build(){
  for (int i=1; i <= X._numberofdays; i++){
 Day tmp = new Day (i, null);
  X.add(tmp);}}
void draw(){
  int x = 0;
  int y = 0;
  background (255,255,255);
  stroke(0,0,0);
  for (int i = 0; i < 7; i++){
    for (int j = 1; j < 7; j++){
      rect(i*100, j*90, 100, 90);
}
 
  }
}
      


 
  
void setup(){
  size(700, 630);
  background(-1);}