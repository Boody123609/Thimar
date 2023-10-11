import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar_application/core/logic/cache_helper.dart';
import 'package:thimar_application/screens/auth/login_in/states.dart';

import 'model.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStates());

  final phoneController = TextEditingController(text: "96655001122334455");
  final passwordController = TextEditingController(text: "123456789");

  void login() async {
    print("Sllmlmlflfl");
    emit(LoginLoadingStates());
    final response = await Dio()
        .post("https://thimar.amr.aait-d.com/public/api/login", data: {
      "phone": phoneController.text,
      "password": passwordController.text,
      "device_token": "test",
      "type": Platform.operatingSystem,
      "user_type": "client"
    });
    print(response.data);
    final model = UserData.fromJson(response.data);
    CacheHelper.saveImageProfile(model.data.image);



    emit(LoginSuccessStates());
  }
}
