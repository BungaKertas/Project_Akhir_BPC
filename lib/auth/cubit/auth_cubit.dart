import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_akhir/services/auth_services.dart';
import 'package:project_akhir/users_models.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());


  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      UsersModels user = await AuthService().signIn(email: email, password: password);
      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      UsersModels user = await AuthService().signUp(name: name, email: email, password: password);
      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void logout() async {
    try {
     emit(AuthLoading());
     await AuthService().logout();
     emit(AuthInitial()); 
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
