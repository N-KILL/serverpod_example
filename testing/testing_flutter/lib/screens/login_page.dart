import 'package:flutter/material.dart';
import 'package:testing_flutter/widgets/login_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 80, left: 16, right: 16),
                child: Text('Login',
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 50,
                    )),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextoBox(
              label: 'Enter Username',
              hint: 'Ej: Pepito',
              censura: false,
              keyboard: TextInputType.name,
              icono: Icon(Icons.person),
            ),
            Divider(height: 25),
            TextoBox(
              label: 'Enter Mail',
              hint: 'Ej: pepitohdp@hotmail.com',
              censura: false,
              keyboard: TextInputType.emailAddress,
              icono: Icon(Icons.mail_outline_outlined),
            ),
            Divider(height: 25),
            TextoBox(
              label: 'Enter Password',
              hint: '',
              censura: true,
              keyboard: TextInputType.text,
              icono: Icon(Icons.verified_user_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
