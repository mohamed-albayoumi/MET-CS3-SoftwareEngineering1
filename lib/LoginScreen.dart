import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:world_real_state/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const FeaturedProperties())),
                  child: const Text(
                    'Continue Without Login',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF307FD6)),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/WorldSplashScreen.png')),
              ),
              const Text(
                'Welcome To\nReal State',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 100),
              const LoginButton(
                bColor: Color(0xFF307FD6),
                label: 'Sign in with Google',
                ic: FontAwesomeIcons.google,
              ),
              const LoginButton(
                bColor: Color(0xFF1C5899),
                label: 'Continue with Facebook',
                ic: FontAwesomeIcons.facebookF,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 17),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF1C5899)),
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1C5899)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 31),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Already have an account ?',
                  style: TextStyle(
                      color: Color(0xFF7B7B7B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Color(0xFF307FD6),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.bColor,
    required this.label,
    required this.ic,
  });
  final Color bColor;
  final String label;
  final IconData ic;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 17),
      width: double.infinity,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(32), color: bColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            ic,
            color: Colors.white,
            size: 17,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          )
        ],
      ),
    );
  }
}
