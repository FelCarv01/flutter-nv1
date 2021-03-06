import 'package:flutter/material.dart';

import 'package:projeto01/Components/login/custom_login_button_component.dart';
import 'package:projeto01/controllers/login_controller.dart';
import 'package:projeto01/widgets/custom_textfield_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people,
                color: Colors.blueGrey[600],
                size: MediaQuery.of(context).size.height * 0.26),
            const SizedBox(
              height: 20,
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setLogin,
              label: 'Login',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setPass,
              label: 'Senha',
              obscureText: true,
            ),
            const SizedBox(
              height: 22,
            ),
            CustomLoginButtonComponent(
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
