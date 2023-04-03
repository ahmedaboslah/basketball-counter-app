import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/cubit/counter.dart';

class countercubit extends Cubit<counterstate> {
  countercubit() : super(counterAincrementstate());

  int teamApoints = 0;
  int teamBpoints = 0;

  void Teamincreament({required String Team, required int buttonNumber}) {
    if (Team == 'A') {
      teamApoints += buttonNumber;
      emit(counterAincrementstate());
    }
    else if (Team == 'B') {
      teamBpoints += buttonNumber;
      emit(counterBincrementstate());
    }
  }
}
