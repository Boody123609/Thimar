import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_application/core/design/castama/navigation.dart';
import 'package:thimar_application/screens/auth/login_in/cubit.dart';
import 'package:thimar_application/screens/auth/login_in/states.dart';
import 'package:thimar_application/screens/home/navbar.dart';
import '../../../core/design/castama/btn.dart';
import '../../../core/design/castama/input.dart';
import '../forget_password/view.dart';
import '../sgin_up/view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        LoginCubit cubit = BlocProvider.of(context);

        return Scaffold(
          body: SafeArea(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 21, left: 136, right: 109, top: 20),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 129.w,
                    height: 125.h,
                  ),
                ),
                Text(
                  "مرحبا بك مرة أخرى",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "يمكنك تسجيل الدخول الأن",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Input(
                  controller: cubit.phoneController,
                  text: "رقم الجوال",
                  imagepath: "assets/images/Phone.svg",
                  isPhone: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Input(
                  controller: cubit.passwordController,
                  text: "كلمة المرور",
                  imagepath: "assets/images/lock.svg",
                  isPhone: false,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: TextButton(
                        onPressed: () {
                          navigateTo(ForgetPasswordPage());
                        },
                        child: Text(
                          "نسيت كلمة المرور ؟",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ),
                ),
                BlocConsumer(
                  bloc: cubit,
                  builder: (context, state) {
                    if (state is LoginLoadingStates) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return BTN(
                          text: "تسجيل الدخول",
                          onPrees: () {
                            cubit.login();
                          });
                    }
                  },
                  listener: (BuildContext context, state) {
                    if (state is LoginSuccessStates) {
                      navigateTo(NavBarScreen(),isBack: false);
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ليس لديك حساب ؟",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(SignUpPage());
                      },
                      child: Text(
                        "تسجيل الأن",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
