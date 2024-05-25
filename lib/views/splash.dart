// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:student_getx/other/color.dart';
import 'package:student_getx/views/home_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(-0.1, 0), end: Offset(0.1, 0)).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    gotohome(context);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E294E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _scaleAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Text.rich(
                    TextSpan(
                      text: 'SCHOOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ₿OX',
                          style: TextStyle(
                            color: CustomColor.getColor(),
                            fontWeight: FontWeight.normal,
                            fontSize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          //  SizedBox(height: 20),
            // AnimatedBuilder(
            //   animation: _slideAnimation,
            //   builder: (context, child) {
            //     return SlideTransitio
            //       position: _slideAnimation,
            //       child:
            //        Text(
            //         'F L U T T E R    D E V E L O P E R',
            //         style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: const Color.fromARGB(255, 233, 227, 227),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            //SizedBox(height: 20,),
            Container(
              child: Lottie.asset('images/my.json'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> gotohome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 6));
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => HomePage()));
  }
}
