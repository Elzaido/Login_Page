import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_login_page/shared/cubit/state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool isPass = true;

  void scureChange() {
    isPass = !isPass;
    emit(ChangeScureState());
  }
}
