

class Nutrition{


  Nutrition(){
    _weight=0;
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
      storeData(_weight,_height,_calor,BMI(_weight, _height));
      }     
 JOptionPane.showMessageDialog(null, BMI(_weight, _height), "BMI",  JOptionPane.INFORMATION_MESSAGE);   

}
}
    
