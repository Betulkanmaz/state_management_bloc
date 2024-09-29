import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_bloc/controller/bloc_event.dart';
import 'package:state_management_bloc/controller/bloc_state.dart';

class BlocHomePage extends Bloc<BlocEvent, CounterState> {
  BlocHomePage() : super(ChangeValue(0)) {
    on<Increment>((event, emit) {
      emit(ChangeValue(state.counter + 1));
    });
    on<Decrement>((event, emit) {
      emit(ChangeValue(state.counter - 1));
    });
    on<Reset>((event, emit) {
      emit(ChangeValue(0));
    });
  }
}
