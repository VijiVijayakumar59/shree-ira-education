// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:shreeiraeducation/utils/size/constant_height/constant_height.dart';
import 'package:shreeiraeducation/utils/size/constant_width/constant_width.dart';
import 'package:shreeiraeducation/view/authentication/widgets/custom_textfield_widget.dart';
import 'package:shreeiraeducation/view/home/screens/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
    // final AuthService authService = AuthService();
    return Scaffold(
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
                controller: nameController,
                label: "Full Name *",
              ),
              const KHeight(size: 0.02),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    height: size.height * 0.07,
                    child: CustomTextFieldWidget(
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
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    height: size.height * 0.07,
                    child: CustomTextFieldWidget(
                      controller: confirmController,
                      label: "Re Password *",
                      validator: (value) {
                        if (value!.length < 6) {
                          return "Password is Incorrect";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.04),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // if (loginKey.currentState!.validate()) {
                    //   log('Validation success');
                    //   Map<String, dynamic>? loginResult = await authService.login(
                    //     emailController.text,
                    //     passwordController.text,
                    //   );
                    //   log('Login Result: $loginResult');
                    //   if (loginResult != null) {
                    //     if (loginResult.containsKey('access_token')) {
                    //       log('Login successful');
                    //       Map<String, dynamic> user = loginResult['user'];

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                    //     } else if (loginResult.containsKey('error')) {
                    //       String errorMessage = loginResult['error'];
                    //       ScaffoldMessenger.of(context).showSnackBar(
                    //         SnackBar(
                    //           content: Text('Login failed: $errorMessage'),
                    //           duration: const Duration(seconds: 2),
                    //         ),
                    //       );
                    //     }
                    //   } else {
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       const SnackBar(
                    //         content: Text('Login failed. Please try again.'),
                    //         duration: Duration(seconds: 2),
                    //       ),
                    //     );
                    //   }
                    // }
                  },
                  style: ButtonStyle(
                    shape: const WidgetStatePropertyAll(RoundedRectangleBorder()),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
              const KHeight(size: 0.08),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already registered",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  KWidth(size: 0.01),
                  Text(
                    "Sign In now",
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
