import 'package:flutter/material.dart';
import 'package:register/pallate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:register/screens/register-page.dart';
import 'package:register/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 100,
                    child: Image.asset('assets/logos/logo.png',
                        height: 250, width: 350),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.white, width: 1),
                    )),
                    child: Text(
                      'Arabic | English',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Forgot Password?',
                              style: kBodyText,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            RoundedButton(
                              buttonText: 'Login',
                               color: Color.fromARGB(255, 145, 10, 0)
                               ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
                              )),
                              child: RichText(
                              text: TextSpan(
                              text: 'Create New Account',
                              style: kBodyText,
                              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegisterPage())),
                  
      ),
    ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
