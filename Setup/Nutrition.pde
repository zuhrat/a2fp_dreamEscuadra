import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;

class Nutrition{
  int _weight;
  int _height;
  int BMI;
  private String path;
  private boolean append =false;
  Nutrition(){
    _weight=0;
  }
  Nutrition (String _pathfile){
    path =_pathfile;
  }
  Nutrition (String _pathfile, boolean append_value){
      path = _pathfile;
      append=append_value;
  }
  void draw(){
     background(0); 
      String widthstr, heightstr;
  //if (_weight == 0 || _height == 0){
  widthstr = JOptionPane.showInputDialog("Enter the weight in pounds: "); 
  heightstr = JOptionPane.showInputDialog("Enter the height in inches: ");
  while (widthstr != "" && heightstr != ""){
 
  if (widthstr == "" && heightstr == "") {
        _weight = 0;
        _height = 0;}
  else {
     _weight=parseInt(widthstr); 
     _height=parseInt(heightstr); 
  }
  storeData(_weight,_height);
  }

 JOptionPane.showMessageDialog(null, BMI(_weight, _height), "Weight",  JOptionPane.INFORMATION_MESSAGE);   
 

  }
  
  int BMI (int i, int j) {
    int ans = 0;
    int a = i * 703;
    int b = j * j;
    ans = a/b;
   return ans;}
 
   
  
  //USes mouseX and mouseY to determine what day it is and store the data in that day
  void storeData(int weight, int heightt){
    Day now = X._head;
    for (int i = 1; i <= X._numberofdays; i++){
          if ( now.pixelx <= mouseX && now.pixelx + 100 >= mouseX)
            if ( now.pixely <= mouseY && now.pixely + 90 >= mouseY){
                now.setWeight(weight);
                now.setHeight(heightt);
                break;
            }
         now = now.getNext();
    }
  }
  
  void writeToFile(String text) throws IOException{
    FileWriter lesgo = new FileWriter(path,append);
    PrintWriter _printLine =new PrintWriter(lesgo);
    
    _printLine.printf("%s" + "%n", text);
    
    _printLine.close();
    }
}
    