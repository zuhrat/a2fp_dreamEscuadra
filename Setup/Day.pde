//This class is basically a NODE class
class Day {
  private int _cargo;
  private Day _nextNode;

//Constructor 
  Day( int value, Day next ){
    _cargo = value;
    _nextNode = next; }
  
  Day getNext() {return _nextNode;}
  
  int getCargo(){
    return _cargo;}
  void setCargo(int newCargo){
    _cargo = newCargo;}
  void setNext (Day newNext){
    _nextNode = newNext;}
}