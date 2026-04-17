import 'package:dev_do/ui/widgets/background_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Text('Get started with'),
                      TextFormField(
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: 'Pass'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_circle_right_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
