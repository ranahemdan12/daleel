import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_offer_state.dart';

class AddNewOfferCubit extends Cubit<AddNewOfferState> {
  AddNewOfferCubit() : super(AddNewOfferInitial());
}
