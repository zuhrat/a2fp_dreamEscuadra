//First calendar would be the month of january
import javax.swing.JOptionPane;  //necessary to use pop ups that allow input

//Make a new calendar to work with
Calendar X = new Calendar (6, 1, 2016);

//Necessary Variables
int nbOfHorizontalLines = 5;
int nbOfVerticalLines = 7;
String[] weekDay = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
String[] months = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int rectX, rectY;        // Position of square button
boolean locked = false;  //Mouse
int _weight;             //Variable to keep track of user's weight
int _height;             //Variable to keep track of user's height
int _calor;              //Variable to keep track of user's caloric intake
  int BMI;               //Variable to keep track of user's BMI
int locw;
int loch;
int rectSize = 90;       // Diameter of rect, wich will be buttons
boolean sed =true;
boolean button;  
boolean button2;

color rectColor, baseColor;
color rectHighlight;
color currentColor;
boolean rectOver = false;

//Add as many nodes to the calendar as the number of days in that month
void buildCalendar() {
  for (int i = 1; i <= X._numberofdays; i++) {
    X.addLast(i);}}

void pagify(){
  Day tmp = X._head;
  while(tmp.getNext()!= X._tail){
    Letswrite(tmp._weight,tmp._height,tmp.getCargo());
    tmp=tmp.getNext();}
  Letswrite(tmp._weight,tmp._height,tmp.getCargo());
  Letswrite(tmp._weight,tmp._height,tmp.getCargo());}
    
//Numberfy the dates of the calendar
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
      textSize(20);
      text(x.getCargo(), i*100, j*90);
      textSize(16);
      text(x._weight + "lb , " + x._height+ "in",i*100+5,j*90 -25);
      text(x._calor + "C",i*100 + 15,j*90-50);
      x.setPixel(i*100,j*90 -90);
      if(x.getCargo()==X._numberofdays){
        break;
      }
      x=x.getNext();}
      if(x.getCargo()==X._numberofdays){
        break;
      }
      y=0;}}

//Since calendar is a linked list, i am adding as many nodes (days) in the month
void draw(){
  update(mouseX, mouseY);
  background(currentColor);
 
  //make a button
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(51);
  rect(rectX, rectY, rectSize, rectSize);

//Make sure that each day of the calendar will be a pressable button
for (int i = 0; i < 7; i++){
    for (int j = 1; j < 8; j++){
      rectButton(i*100, j*90);}}
   
   //Make the next and previous buttons for the calendar
   fill (255);
   textSize(40);
   text("NEXT",600,700);
   text("PREV",500,700);
   textSize(110);
   text(X._year, 215,85);
   textSize(20);
   text(months[X._month], 350, 110);
  
  //Make rectangles for the name of weekdays
   for(int i =0; i<7;i++){
     textSize(15);
       text(weekDay[i],i*100+15,130);
   }
   //Build and numebrfy the calendar
   if(sed==true){
   buildCalendar();
   pagify();
   sed=false;
   }
   numberfy();
}


//Helper function 
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
}

//Function to update the x and y coordinates of the mouse
void update(int x, int y) {
   if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;}
    else {
    rectOver = false;}}
    
//What happens if the mouse if pressed?
void mousePressed() {      
    update(mouseX, mouseY);
  if (true) {
        if( mouseY < 120 && mousePressed) {
       Home x = new Home();
       x.ask();
       }
       //If it's the NEXT button then update the month
       else if (mouseX >= 600 && mouseY >= 630 && mousePressed) {
    
        if(X._month==12){
            sed=true;
            X._year+=1;
            X._month=1;}
        else{
          sed =true;
          X._month+=1;}
        
         X = new Calendar(X._month, 1, X._year);
         currentColor = rectColor;}
 
   //If its the PREV button then move back a month
     else if(mouseX < 600 && mouseX>=500 && mouseY >= 630 && mousePressed) {
     if (X._month==1){
         sed = true;
         X._year -= 1;
         X._month = 12;}
        else{
          sed = true;
          X._month -=1;}
       
       X = new Calendar(X._month, 1, X._year);
         currentColor = rectColor;}
     
     else {
       Nutrition dog = new Nutrition();
       dog.ask();
      currentColor = rectColor;}}}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
 //USes mouseX and mouseY to determine what day it is and store the data in that day
    void storeData(int weight, int heightt, int calor, int BMI){
    Day now = X._head;
    for (int i = 1; i <= X._numberofdays; i++){
          if (mouseX <= now.pixelxrange && mouseX >= now.pixelx && mouseY <= now.pixelyrange && mouseY >= now.pixely){
                now.setWeight(weight);
                now.setHeight(heightt);
                now.setCalor(calor);
                now.setBMI(BMI);
                break;
            }
         now = now.getNext();
    }
  }
  void setup(){
  size(700, 720);
  background(-1);
  rectColor = color(0);
  rectHighlight = color(51);
 
  baseColor = color(102);
  currentColor = baseColor;
  rectX = 0;
  rectY = 0;
  }
    int BMI (int i, int j) {
    int ans = 0;
    int a = i * 703;
    int b = j * j;
    ans = a/b;
   return ans;}
      int highWeight(){
    int x=0;
    Day tmp = X._head;
    for(int i =0;i<X._numberofdays;i++){
      if(tmp._weight>x){
        x=tmp._weight;
      }
      tmp=tmp.getNext();
    }
    return x;
  }
  float avgBMI(){
    float x=0;
    float y =0;
    Day tmp = X._head;
    for(int i =0;i<X._numberofdays;i++){
      if(tmp._BMI!=0){
        x+=tmp._BMI;
        y+=1;
      }
      tmp=tmp.getNext();
    }
    x=(float)x/y;
    return x;
  }
