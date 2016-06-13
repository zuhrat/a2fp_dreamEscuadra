import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;

class Nutrition{


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
}
  

 
   
  
 
  
  void writeToFile(String text) throws IOException{
    FileWriter lesgo = new FileWriter(path,append);
    PrintWriter _printLine =new PrintWriter(lesgo);
    
    _printLine.printf("%s" + "%n", text);
    
    _printLine.close();
    }
}
    