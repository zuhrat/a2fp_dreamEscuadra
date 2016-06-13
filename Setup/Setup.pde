//First calendar would be the month of january
import javax.swing.JOptionPane; 
Calendar X = new Calendar (6, 1, 2016);
int nbOfHorizontalLines = 5;
int nbOfVerticalLines = 7;
String[] weekDay = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
String[] months = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int rectX, rectY;      // Position of square button
boolean locked = false;
int _weight;
int _height;
  int BMI;
int locw;
int loch;
int rectSize = 90;     // Diameter of rect
boolean sed =true;
boolean button;
boolean button2;

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
    Letswrite(tmp._weight,tmp._height,tmp.getCargo());
    tmp=tmp.getNext();
  }
  Letswrite(tmp._weight,tmp._height,tmp.getCargo());
  Letswrite(tmp._weight,tmp._height,tmp.getCargo());
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
      text(x._height + "," + x._weight,i*100,j*85);
      x.setPixel(i*100,j*90 -90);
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
  
   Homeb();

  
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

void Homeb(){
  update(mouseX, mouseY);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(255, 200, 200);
  }
  
  stroke(51);
  rect(20, 30, 90, 90);
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
}
 
void update(int x, int y) {
 
   if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    
  } else {
    rectOver = false;
  }
}

void mousePressed() {      
    update(mouseX, mouseY);
  //if (_weight == 0 || _height == 0){
  

  if (true) {
       if (mouseX >= 600 && mouseY >= 630 && mousePressed) {
    
        if(X._month==12){
            sed=true;
            X._year+=1;
            X._month=1;}
        else{
          sed =true;
          X._month+=1;}
        
         X = new Calendar(X._month, 1, X._year);
         currentColor = rectColor;}
 
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
     
     else if(mouseX < 110 && mouseY < 120 && mousePressed) {
       Home x = new Home();
       x.draw();}
     
     else {
       Nutrition dog = new Nutrition();
       dog.ask();
      currentColor = rectColor;}}
       
         

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
  String _fileName= "D:/" + X._month + z+ X._year + ".txt";
  try {
    Nutrition lemme = new Nutrition(_fileName);
    lemme.writeToFile("" +x +"," + y );
  }
  catch(IOException e){
    System.out.println("nah");
  }

}
void divdeandconquer(String hereugo){
    int x=0;
    String part="";
    String ok = ",";
//    for(int x=0;x<hereugo.length();x++){
      while(!hereugo.substring(x,x+1).equals(ok)){
        part+=hereugo.substring(x,x+1);
        x+=1;
      }
      locw=Integer.parseInt(part);
      part="";
      while(x<hereugo.length()){
        part+=hereugo.substring(x,x+1);
        x+=1;
      }
      loch=Integer.parseInt(part);
  //  }
}
 //USes mouseX and mouseY to determine what day it is and store the data in that day
  void storeData(int weight, int heightt){
    Day now = X._head;
    for (int i = 1; i <= X._numberofdays; i++){
          if (mouseX <= now.pixelxrange && mouseX >= now.pixelx && mouseY <= now.pixelyrange && mouseY >= now.pixely){
                now.setWeight(weight);
                now.setHeight(heightt);
                pagify();
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