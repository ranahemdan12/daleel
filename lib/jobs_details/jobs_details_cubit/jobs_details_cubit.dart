import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'jobs_details_state.dart';

class JobsDetailsCubit extends Cubit<JobsDetailsState> {
  JobsDetailsCubit() : super(JobsDetailsInitial());
}
