import 'package:flutter/material.dart';
import 'package:yeyito/pages/login_page.dart';





class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 2000), (){});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/yeyito_splash.png', fit: BoxFit.fill,);
  }
}
