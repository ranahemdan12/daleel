import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sub_category_details_state.dart';

class SubCategoryDetailsCubit extends Cubit<SubCategoryDetailsState> {
  SubCategoryDetailsCubit() : super(SubCategoryDetailsInitial());
}
