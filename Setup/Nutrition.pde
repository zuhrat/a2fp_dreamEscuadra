
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
      String widthstr, heightstr, calorstr;
      widthstr = JOptionPane.showInputDialog("Enter your weight in pounds: "); 
  heightstr = JOptionPane.showInputDialog("Enter your height in inches: ");
  calorstr = JOptionPane.showInputDialog("Enter your caloric intake: ");
      if (!widthstr.equals("") && !heightstr.equals("")){
     _weight=parseInt(widthstr); 
     _height=parseInt(heightstr);
     _calor=parseInt(calorstr); 
      storeData(_weight,_height,_calor);
      }     
 JOptionPane.showMessageDialog(null, BMI(_weight, _height), "BMI",  JOptionPane.INFORMATION_MESSAGE);   

}
}
