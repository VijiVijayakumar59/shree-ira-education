// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/size/constant_height/constant_height.dart';
import 'package:shreeiraeducation/view/authentication/screens/sign_up_screen.dart';
import 'package:shreeiraeducation/view/authentication/widgets/custom_textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Form(
          key: loginKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SHREE ",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "IRA",
                    style: TextStyle(
                      color: Color.fromARGB(255, 235, 160, 40),
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              const Text(
                "EDUCATION",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                ),
              ),
              const KHeight(size: 0.04),
              CustomTextFieldWidget(
                controller: emailController,
                label: "Email address *",
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                    return "Enter Valid Email";
                  } else {
                    return null;
                  }
                },
              ),
              const KHeight(size: 0.02),
              CustomTextFieldWidget(
                controller: passwordController,
                label: "Password *",
                validator: (value) {
                  if (value!.length < 6) {
                    return "Password is Incorrect";
                  } else {
                    return null;
                  }
                },
              ),
              const KHeight(size: 0.04),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  style: ButtonStyle(
                    shape: const WidgetStatePropertyAll(RoundedRectangleBorder()),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Sign in'),
                ),
              ),
              const KHeight(size: 0.08),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not registered yet? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign Up now",
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
