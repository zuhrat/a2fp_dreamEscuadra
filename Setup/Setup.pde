//First calendar would be the month of january
Calendar X = new Calendar (1, 1, 2010);

//Since calendar is a linked list, i am adding as many nodes (days) in the month
void build(){
  for (int i=1; i <= X._numberofdays; i++){
    Day tmp = new Day (i, null);
    X.add(tmp);}}

void setup(){
  size(900, 900);
  background(-1);}