//First calendar would be the month of january
Calendar X = new Calendar (1, 1, 2016);
int nbOfHorizontalLines = 5;
int nbOfVerticalLines = 7;
String[] weekDay = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
int rectX, rectY;      // Position of square button

int rectSize = 90;     // Diameter of rect

color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
void buildCalendar() {
  for (int i = 1; i <= X._numberofdays; i++) {
    X.addLast(i);
  }
}
 
void numberfy(){
  
  Day x;
  x = X._head;
  int y= X._weekday;
  for (int j = 3; j < 9; j++){
    for (int i = y; i < 7; i++){
      if(x==null){
        break;
      }
      
      fill (80);
      text(x.getCargo(), i*100, j*90);
      if(x.getCargo()==X._numberofdays){
        break;
      }
      x=x.getNext();}
      y=0;
      
}
}
//Since calendar is a linked list, i am adding as many nodes (days) in the month
void draw(){
  update(mouseX, mouseY);
  background(currentColor);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  
for (int i = 0; i < 7; i++){
    for (int j = 1; j < 8; j++){
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

void update(int x, int y) {
 
   if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    
  } else {
    rectOver = false;
  }
}

void mousePressed() {
  if (rectOver) {
    if(X._month==12){
      X._year+=1;
      X._month=1;
    }
    else{
      X._month+=1;
    }
    
    X = new Calendar(X._month, 1, X._year);
    currentColor = rectColor;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}



 
void setup(){
  size(700, 720);
  background(-1);
  rectColor = color(0);
  rectHighlight = color(51);
 
  baseColor = color(102);
  currentColor = baseColor;
  
  rectX = 650;
  rectY = 30;
  }
