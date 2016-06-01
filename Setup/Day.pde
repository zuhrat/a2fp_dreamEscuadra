//This class is basically a NODE class

public class Day<T> {
  private T _cargo;
  private Day _nextNode;

  //Constructor
  public Day( T value, Day next){
    _cargo = value;
    _nextNode = next;
  }
  
  
  //Accessorts
  public Day getCargo() { return _cargo; }
  
  public Day getNext() { return _nextNode; }
  
  //Mutators
  public setCargo( T newCargo ) {
    T foo = getCargo();
    _cargo = newCargo;
    return foo; }
  
  public Day setNext( Day newNext ) {
    Day foo = getNext();
    _nextNode = newNext;
    return foo;}
    
}