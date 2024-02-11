import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nearby_state.dart';

class NearbyCubit extends Cubit<NearbyState> {
  NearbyCubit() : super(NearbyInitial());
}
