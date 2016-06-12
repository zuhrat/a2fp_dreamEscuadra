class Year{
  
  int year;
  Data[][] months;
  Year _nextYear;
  Year _lastYear;
  int[] days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  int totalWeight;
  int numOfWeights;
  int yearAverageWeight; // THIS is totalweight / numOfWeights
  
  Year (int yearNum){
    year = yearNum;
    months = new Data[12][];
    for (int i = 0; i< 12; i++){
      months[i] = new Data[days[i]];
    }
  }
  
  void inputData(){
    Day today = X._head;
    int month = X._month;
    for (int i = 1; i <= X._numberofdays;i++){
      months[month][i].setWeight(today._weight);
      months[month][i].setHeight(today._height);
      if (today.equals(X._tail))
        break;
      if (today._weight != 0){
        totalWeight += today._weight;
        numOfWeights += 1;
        updateWeightAverage();
        
      today = today.getNext();
    }
  }
  
  void updateWeightAverage(){
    yearAverageWeight = (int) totalWeight / numOfWeights;
  }
  
  
  
  
  class Data{
    int _dataHeight;
    int _dataWeight;
    
    Data(int hight, int wait){
      _dataWeight = wait;
      _dataHeight = hight;
    }
    
    int getHeight(){
      return _dataHeight;
    }
    int getWeight(){
    return _dataWeight;
    }
    
  void setHeight(int inputHeight){
      _dataHeight = inputHeight;
    }
    void setWeight(int inputWeight){
     _dataWeight = inputWeight;
    }
  }
  
}