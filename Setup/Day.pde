//This class is basically a NODE class
class Day {
  private int _cargo;
  private Day _nextNode;
  private int _height;
  private int _weight;

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
  
  
  
  int getCargo(){
    return _cargo;}
  void setCargo(int newCargo){
    _cargo = newCargo;}
  void setNext (Day newNext){
    _nextNode = newNext;}
}
