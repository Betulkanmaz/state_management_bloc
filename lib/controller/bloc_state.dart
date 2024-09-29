abstract class CounterState{
  int counter;

  CounterState(this.counter);
}

/*class Initialize extends CounterState{
  Initialize():super(0);
}*/

class ChangeValue extends CounterState{
  ChangeValue(int value):super(value);
}