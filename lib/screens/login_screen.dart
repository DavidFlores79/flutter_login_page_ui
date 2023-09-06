import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/widgets/greeting_text.dart';
import 'package:flutter_login_page_ui/widgets/inputs_container.dart';
import 'package:flutter_login_page_ui/widgets/or_divider.dart';
import 'package:flutter_login_page_ui/widgets/social_media_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginScreenContent(),
    );
  }
}

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.orange[900]!,
            Colors.orange[800]!,
            Colors.orange[400]!,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: GreetingText(),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    InputsContainer(),
                    const SizedBox(height: 30),
                    MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      disabledColor: Colors.grey,
                      elevation: 0,
                      color: Colors.orange[900],
                      minWidth: double.infinity,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    OrDivider(title: 'O ingresa con'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(
                            imagePath: 'assets/images/brand/google.png'),
                        const SizedBox(width: 20),
                        SocialMediaButton(
                            imagePath: 'assets/images/brand/apple.png'),
                        const SizedBox(width: 20),
                        SocialMediaButton(
                            imagePath: 'assets/images/brand/facebook.png'),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿No estas registrado?'),
                        SizedBox(width: 5),
                        Text(
                          'Crear cuenta',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
