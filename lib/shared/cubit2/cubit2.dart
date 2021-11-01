// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_login_page/shared/cubit2/state2.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(LoginInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  bool isPass = true;
  bool isPass2 = true;

  void scureChange() {
    isPass = !isPass;
    emit(ChangeScureState());
  }

  void scureChange2() {
    isPass2 = !isPass2;
    emit(ChangeScureState());
  }
}
