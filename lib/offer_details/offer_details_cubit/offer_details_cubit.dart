import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'offer_details_state.dart';

class OfferDetailsCubit extends Cubit<OfferDetailsState> {
  OfferDetailsCubit() : super(OfferDetailsInitial());
}
