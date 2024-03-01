import 'package:best_flutter_ui_templates/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TopScreenImage(screenImageName: 'home.jpg'),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 15.0, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const ScreenTitle(title: 'Привет'),
                      const Text(
                        'Поиск работы...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Hero(
                        tag: 'login_btn',
                        child: CustomButton(
                          buttonText: 'Войти',
                          onPressed: () {
                            Navigator.push<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) => LoginScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Hero(
                        tag: 'signup_btn',
                        child: CustomButton(
                          buttonText: 'Регистрация',
                          isOutlined: true,
                          onPressed: () {
                            Navigator.push<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) => SignUpScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Регистрация с помощью',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 25,
                              child: Image.asset(
                                  'assets/images/icons/facebook.png'),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.transparent,
                              child:
                                  Image.asset('assets/images/icons/google.png'),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              radius: 25,
                              child: Image.asset(
                                  'assets/images/icons/linkedin.png'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
