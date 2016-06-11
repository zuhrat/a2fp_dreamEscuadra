//First calendar would be the month of january
Calendar X = new Calendar (1, 1, 2010);
int nbOfHorizontalLines = 5;
int nbOfVerticalLines = 7;
String[] weekDay = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};


//Since calendar is a linked list, i am adding as many nodes (days) in the month
void draw(){
  int x = 0;
  int y = 0;
  for (int i = 0; i < 7; i++){
    for (int j = 1; j < 7; j++){
      fill (255);
      rect(i*100, j*90, 100, 90);
}}
   fill (50);
   textSize(110);
   text(X._year, 215,85);
   for(int i =0; i<7;i++){
     textSize(15);
       text(weekDay[i],i*100+15,130);
   }
   
   buildCalendar();
   numberfy();
       
}
      
void buildCalendar() {
  for (int i = 1; i <= X._numberofdays; i++) {
    X.add(i);
  }
}
 
void numberfy(){
  
  Day x;
  x = X._head;
  for (int i = 0; i < 7; i++){
    for (int j = 3; j < 7; j++){
      while (x.getNext() != null){
      fill (80);
      text(x.getCargo(), i*100, j*90);
      x=x.getNext();
}}}
}
 
void setup(){
  size(700, 630);
  background(-1);}