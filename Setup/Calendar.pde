//Linked list class for the days

public class Calendar {
  private Day<T> _head;
  private int _size;
  
  //Constructor
  public Calendar() {
    _head = null;
   _size = 0;
  }
  
  public boolean add( T value ) {
    Day<T> tmp = new Day<T>(value, null);
    _head.setNext( tmp );
    _size++;
    return true;}
    
  
  