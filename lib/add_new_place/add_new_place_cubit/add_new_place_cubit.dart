import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_place_state.dart';

class AddNewPlaceCubit extends Cubit<AddNewPlaceState> {
  AddNewPlaceCubit() : super(AddNewPlaceInitial());
}
