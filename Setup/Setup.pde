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
  background (255,255,255);
  stroke(0,0,0);

  float distanceBetweenHorizontalLines = (float)height/nbOfHorizontalLines;
  float distanceBetweenVerticalLines = (float)width/nbOfVerticalLines;

  for(int i = 0; i < nbOfHorizontalLines; i++)
  {
   line(0, i*distanceBetweenHorizontalLines, width, i*distanceBetweenHorizontalLines);


  }

  for(int i = 0; i < nbOfVerticalLines; i++)
  {
    line (i*distanceBetweenVerticalLines,0,i*distanceBetweenVerticalLines, height);
  }
  int z=1;
  while(z<=31){
  for(int f =30; f< 900;f+=900/5){
  for(int i = 0; i<900; i+=900/7){
 
 textSize(32);
 text(z, i, f); 
 fill(50);
  z++;
 
  }
  }
  }
  }
  
void setup(){
  size(900, 900);
  background(-1);}
