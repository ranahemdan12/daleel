import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_job_offer_state.dart';

class AddNewJobOfferCubit extends Cubit<AddNewJobOfferState> {
  AddNewJobOfferCubit() : super(AddNewJobOfferInitial());
}
