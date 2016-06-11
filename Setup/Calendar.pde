//Linked list class for the days
class Calendar {
  Day _head;
  int _size;
  int _year;
  int _numberofdays; //number of days IN THAT MONTH
  int _weekday; //which weekday does the FIRST day of that month start at
  boolean _leap;
  String[] months = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
  int[] days = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  
  
  //Constructor
  //x is for the month
  //y is for the numerical day
  //z is for the year
  Calendar(int x, int y, int z){
    // return true if the given year is a leap year
   _head = null;
   _size = 0;
   _weekday = day(x, y, z);
   _year=z;
   _numberofdays = days[x];
   _leap = isLeapYear(z);
   
  }


//what day of the week it falls
 int day(int M, int D, int Y) {
   int y = Y - (14 - M) / 12;
        int x = y + y/4 - y/100 + y/400;
        int m = M + 12 * ((14 - M) / 12) - 2;
        int d = (D + x + (31*m)/12) % 7;
        return d;
    }
 
//is it a leapyear?
boolean isLeapYear(int year) {
        if  ((year % 4 == 0) && (year % 100 != 0)) return true;
        if  (year % 400 == 0) return true;
        return false;
    }

void add(int val) {
  Day tmp = new Day(val, null);
  if (_head == null ) {_head = tmp;}
  else
  _head.setNext( tmp );
  _size++;}}


  

  