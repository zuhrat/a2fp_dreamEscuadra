//This class is basically a NODE class
class Day {
  private int _cargo;
  private Day _nextNode;
  private int _height;
  private int _weight;
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
