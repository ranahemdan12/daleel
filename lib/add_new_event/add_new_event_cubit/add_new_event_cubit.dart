import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_event_state.dart';

class AddNewEventCubit extends Cubit<AddNewEventState> {
  AddNewEventCubit() : super(AddNewEventInitial());
}
