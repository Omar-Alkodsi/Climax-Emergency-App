import 'package:flutter/material.dart';
import 'package:register/pallate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';
import 'package:register/screens/login_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    child: Image.asset('assets/logos/logo.png',
                        height: 150, width: 250),
                  ),                 
                  SizedBox(
                    height: 15,
                  ), 
                  Text(
                                'Fill These Required Fields',
                                style: kBodyText,
                              ),
                   Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.penToSquare,
                              hint: 'First Name',
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                            ),
                          
                            TextInput(
                              icon: FontAwesomeIcons.penToSquare,
                              hint: 'Last Name',
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                            ),

                            TextInput(
                              icon: FontAwesomeIcons.penToSquare,
                              hint: 'Age',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                            ),
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
                            TextInput(
                              icon: FontAwesomeIcons.users,
                              hint: 'No. Of Family Members',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                            ),
                          TextInput(
                              icon: FontAwesomeIcons.mobile,
                              hint: 'Mobile',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              icon: FontAwesomeIcons.users,
                              hint: 'Chronic Diseases',
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                            ),
                            RoundedButton(
                              buttonText: 'Upload Image Here',
                               color: Color.fromARGB(255, 145, 10, 0)
                               ),

                            
                            
                            
                          ]
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                            width: 150.0,
                            height: 50.0,
                            child: ElevatedButton(
                              
                              style: RoundedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    primary: Color.fromARGB(255, 141, 2, 2),
                    
                    ),
                              onPressed: () {
                  Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                      'Register',
                      style: TextStyle(fontSize: 28.0, color: Colors.white),
                              
                            ),
                            ),
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
      ],
    );
  }
  
}

