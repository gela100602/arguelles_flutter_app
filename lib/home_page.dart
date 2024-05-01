import 'package:flutter/material.dart';
import 'package:arguelles_flutter_app/styles/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: AppColor.background,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Welcome to the Home Page",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Urbanist',
                          color: AppColor.font),
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Login Button Pressed');
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        elevation: MaterialStateProperty.all(4),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Urbanist', // Set the color to white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
