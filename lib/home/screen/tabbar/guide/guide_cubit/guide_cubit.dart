import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'guide_state.dart';

class GuideCubit extends Cubit<GuideState> {
  GuideCubit() : super(GuideInitial());
}
