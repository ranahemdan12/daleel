import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'subcategory_state.dart';

class SubcategoryCubit extends Cubit<SubcategoryState> {
  SubcategoryCubit() : super(SubcategoryInitial());
}
