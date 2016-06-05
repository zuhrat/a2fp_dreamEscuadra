//This class is basically a NODE class
class Day<T>{
  private T _cargo;
  private Day _nextNode;

  //Constructor
Day( T value, Day next){
    _cargo = value;
    _nextNode = next;}
  
  
  //Accessorts
   //Day getCargo() {return _cargo;}
  
  Day getNext(){return _nextNode;}
  
  //Mutators
  void setCargo( T newCargo ){_cargo = newCargo;}
  
  void setNext( Day newNext ){_nextNode = newNext;}
}