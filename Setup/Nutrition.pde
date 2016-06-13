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
  void ask(){
      String widthstr, heightstr;
      widthstr = JOptionPane.showInputDialog("Enter your weight in pounds: "); 
  heightstr = JOptionPane.showInputDialog("Enter your height in inches: ");
      if (!widthstr.equals("") && !heightstr.equals("")){
     _weight=parseInt(widthstr); 
     _height=parseInt(heightstr); 
      storeData(_weight,_height);
      }
      /*
    for (int i = 1; i <2; i++)
 JOptionPane.showMessageDialog(null, BMI(_weight, _height), "BMI",  JOptionPane.INFORMATION_MESSAGE);   
*/ 
}
  

 
   
  
 
  
  void writeToFile(String text) throws IOException{
    FileWriter lesgo = new FileWriter(path,append);
    PrintWriter _printLine =new PrintWriter(lesgo);
    
    _printLine.printf("%s" + "%n", text);
    
    _printLine.close();
    }
}
    