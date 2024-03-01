import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../components/components.dart';
import '../constants.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String id = 'signup_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _name='';
  String _email='';
  String _password='';
  bool _saving = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
                (Route<dynamic> route) => false
        );
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LoadingOverlay(
          isLoading: _saving,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TopScreenImage(screenImageName: 'signup.png'),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const ScreenTitle(title: 'Регистрация'),
                          CustomTextField(
                            textField: TextField(
                              onChanged: (value) {
                                _name = value;
                              },
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              decoration: kTextInputDecoration.copyWith(
                                hintText: 'Введите имя',
                              ),
                            ),
                          ),
                          CustomTextField(
                            textField: TextField(
                              onChanged: (value) {
                                _email = value;
                              },
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              decoration: kTextInputDecoration.copyWith(
                                hintText: 'Email',
                              ),
                            ),
                          ),
                          CustomTextField(
                            textField: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                _password = value;
                              },
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              decoration: kTextInputDecoration.copyWith(
                                hintText: 'Пароль',
                              ),
                            ),
                          ),
                          CustomBottomScreen(
                            textButton: 'Регистрация',
                            heroTag: 'signup_btn',
                            question: 'Есть аккаунт?',
                            buttonPressed: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {
                                _saving = true;
                              });
                              if (_email!='' && _name!='' && _password !=null) {
                                try {

                                  if (context.mounted) {
                                    signUpAlert(
                                      context: context,
                                      title: 'Хорошая работа',
                                      desc: 'Войдите сейчас',
                                      btnText: 'Войти сейчас',
                                      onPressed: () {
                                        setState(() {
                                          _saving = false;
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignUpScreen()));
                                        });
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
                                      },
                                    ).show();
                                  }
                                } catch (e) {
                                  signUpAlert(
                                      context: context,
                                      onPressed: () {
                                        SystemNavigator.pop();
                                      },
                                      title: 'Ошибка',
                                      desc: 'Закройте приложение и повторите',
                                      btnText: 'Закрыть');
                                }
                              } else {
                                showAlert(
                                    context: context,
                                    title: 'Заполните поля',
                                    desc:
                                        'Для продолжения необходимо заполнить поля',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }).show();
                              }
                            },
                            questionPressed: () async {
                              Navigator.push<dynamic>(
                                context,
                                MaterialPageRoute<dynamic>(
                                  builder: (BuildContext context) => LoginScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
