import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'jobs_state.dart';

class JobsCubit extends Cubit<JobsState> {
  JobsCubit() : super(JobsInitial());
}
