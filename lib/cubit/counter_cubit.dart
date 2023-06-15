import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state < 10) {
      emit(state + 1);
    } else {
      // Se ha alcanzado el límite de 10.
       Fluttertoast.showToast(
          msg: "Ya ha alcanzo el límite",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM // Also possible "TOP" and "CENTER"
        );
    }
  }

  void decrement() {
    if (state > -10) {
      emit(state - 1);
    } else {
      // Se ha alcanzado el límite de -10.
      Fluttertoast.showToast(
          msg: "Ya ha alcanzo el límite",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM // Also possible "TOP" and "CENTER"
        );
    }
  }

  void reset(){
    emit(0);
  }
}
