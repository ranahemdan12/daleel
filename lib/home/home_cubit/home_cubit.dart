import 'package:bloc/bloc.dart';
import 'package:factory_project/favorite/screen/favorite_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../profile/screen/profile_screen.dart';
import '../../special/screen/special_screen.dart';
import '../screen/home_screen.dart';
import '../screen/main_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    HomeScreen(),
    SpecialScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(HomeChangeBottomNavState());
  }
}
