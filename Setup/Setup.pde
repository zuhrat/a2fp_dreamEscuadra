//First calendar would be the month of january
import javax.swing.JOptionPane; 
Calendar X = new Calendar (6, 1, 2016);
int nbOfHorizontalLines = 5;
int nbOfVerticalLines = 7;
String[] weekDay = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
String[] months = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int rectX, rectY;      // Position of square button

int rectSize = 90;     // Diameter of rect
boolean sed =true;

color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
void buildCalendar() {
  for (int i = 1; i <= X._numberofdays; i++) {
    X.addLast(i);
  }
}
void pagify(){
  Day tmp = X._head;
  while(tmp.getNext()!= X._tail){
    Letswrite(X._month,tmp.getCargo(),X._year);
    tmp=tmp.getNext();
  }
  Letswrite(X._month,X._tail.getCargo()-1,X._year);
  Letswrite(X._month,X._tail.getCargo(),X._year);
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
      
      fill (255);
      text(x.getCargo(), i*100, j*90);
      x.setPixel(i*100,j*90);
      if(x.getCargo()==X._numberofdays){
        break;
      }
      x=x.getNext();}
      if(x.getCargo()==X._numberofdays){
        break;
      }
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
  stroke(51);
  rect(rectX, rectY, rectSize, rectSize);
  
  
for (int i = 0; i < 7; i++){
    for (int j = 1; j < 8; j++){
      rectButton(i*100, j*90);
      
}}
   fill (255);
   textSize(110);
   text(X._year, 215,85);
   textSize(20);
   text(months[X._month], 350, 110);
   for(int i =0; i<7;i++){
     textSize(15);
       text(weekDay[i],i*100+15,130);
   }
   if(sed==true){
   buildCalendar();
   pagify();
   sed=false;
   }
   numberfy();
      //Letswrite(5);
       
}

void rectButton(int i, int j){
  rectX = i;
  rectY = j;
  update(mouseX, mouseY);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(255, 200, 200);
  }
  
  stroke(255);
  rect(rectX, rectY, 100, 90);
  if (mouseX<700 && mouseY<630 && mousePressed ) {
    Nutrition dog = new Nutrition();
  dog.draw();}}
 
void update(int x, int y) {
 
   if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    
  } else {
    rectOver = false;
  }
}

void mousePressed() {
  if (rectOver) {
  if (rectX >= 600 && rectY >= 630) {
    
    if(X._month==12){
     sed=true;
      X._year+=1;
      X._month=1;
    
  }
    else{
      sed =true;
      X._month+=1;
    }}
   else if(rectX<600 && rectY < 630) {
     fill(255);
   rect(350, 350, 100, 100);}
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
void Letswrite(int x,int y,int z){
  String _fileName= "D:/" + X._month + ""+ X._year + ".txt";
  try {
    Nutrition lemme = new Nutrition(_fileName,true);
    lemme.writeToFile("" +x +"," + y +","+z);
  }
  catch(IOException e){
    System.out.println("nah");
  }

}


void setup(){
  size(700, 720);
  background(-1);
  rectColor = color(0);
  rectHighlight = color(51);
 
  baseColor = color(102);
  currentColor = baseColor;
  rectX = 600;
  rectY = 30;
  }
