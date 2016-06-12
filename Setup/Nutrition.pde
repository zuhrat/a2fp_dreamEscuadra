import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;

class Nutrition{
  int _weight;
  int _height;
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
  if (_weight == 0 || _height == 0){
  widthstr = JOptionPane.showInputDialog("Enter the weight: "); 
  heightstr = JOptionPane.showInputDialog("Enter the height: "); 
  if (widthstr == "" || heightstr == "") {
        _weight = 0;
        _height = 0;}
  else {
     _weight=parseInt(widthstr); 
     _height=parseInt(heightstr); 
  }
  }
    
   
 JOptionPane.showMessageDialog(null, _weight, "Weight",  JOptionPane.INFORMATION_MESSAGE);   
 JOptionPane.showMessageDialog(null, _height, "Height", JOptionPane.INFORMATION_MESSAGE);
 

 } 

  void writeToFile(String text) throws IOException{
    FileWriter lesgo = new FileWriter(path,append);
    PrintWriter _printLine =new PrintWriter(lesgo);
    
    _printLine.printf("%s" + "%n", text);
    
    _printLine.close();}
    }
 
