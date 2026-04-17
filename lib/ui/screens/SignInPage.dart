import 'package:dev_do/ui/utility/app_colors.dart';
import 'package:dev_do/ui/widgets/background_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

final TextEditingController _emailTEController = TextEditingController();
final TextEditingController _passTEController = TextEditingController();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 80),
                        Text(
                          'Get started with',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _emailTEController,
                          decoration: InputDecoration(hintText: 'Email'),
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          controller: _passTEController,
                          decoration: InputDecoration(hintText: 'Pass'),
                        ),
                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_circle_right_rounded),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Forget Password'),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.4,
                                  ),
                                  text: 'Don\'t have an account? ',
                                  children: [
                                    TextSpan(
                                      text: 'Sign Up',
                                      style: TextStyle(
                                        color: AppColors.themeColor,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

  @override
  void dispose() {
    _emailTEController.dispose();
    _passTEController.dispose();
    super.dispose();
  }
}
