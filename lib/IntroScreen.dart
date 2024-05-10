import 'package:flutter/material.dart';
import 'package:world_real_state/LoginScreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "World Real State",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Where You Start Your New Life ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3D3D3D)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Expanded(
                  child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(56),
                        topRight: Radius.circular(56))),
                child: const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(56),
                      topRight: Radius.circular(56)),
                  child: Image(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      image:
                          AssetImage('assets/images/unsplash_ZdJ6eIKN3G0.png')),
                ),
              )),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const LoginScreen())),
            child: Container(
              margin: const EdgeInsets.only(bottom: 37),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
