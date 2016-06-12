//This class is basically a NODE class
class Day {
  private int _cargo;
  private Day _nextNode;
   int _height=0;
   int _weight=0;
   int _BMI = 0;
  int pixelx;
  int pixely;

//Constructor 
  Day( int value, Day next ){
    _cargo = value;
    _nextNode = next; }
  
  Day getNext() {return _nextNode;}
  
  
  //======== Get Set =========\\
  
  void setWeight(int weight){
    _weight=weight;
}
  void setHeight(int heightt){
    _height = heightt;
  }
  void setBMI(int BMI){
    _BMI = BMI;}
  
  void setPixel(int x,int y){
    pixelx=x;
    pixely=y;
  }
  
  
  
  int getCargo(){
    return _cargo;}
  void setCargo(int newCargo){
    _cargo = newCargo;}
  void setNext (Day newNext){
    _nextNode = newNext;}
}