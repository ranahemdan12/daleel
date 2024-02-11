import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'special_state.dart';

class SpecialCubit extends Cubit<SpecialState> {
  SpecialCubit() : super(SpecialInitial());
}
