import 'package:yeyito/pages/change_password.dart';
import 'package:yeyito/pages/cuenta_page.dart';
import 'package:yeyito/pages/editar.dart';
import 'package:yeyito/pages/forgot_password.dart';
import 'package:yeyito/pages/form_medico.dart';
import 'package:yeyito/pages/home_page.dart';
import 'package:yeyito/pages/home_screen.dart';
import 'package:yeyito/pages/info_yeyito.dart';
import 'package:yeyito/pages/login_page.dart';
import 'package:yeyito/pages/politicas_page.dart';
import 'package:yeyito/pages/profile_page.dart';
import 'package:yeyito/pages/servicios_page.dart';
import 'package:yeyito/pages/servicios_page_2.dart';
import 'package:yeyito/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:yeyito/pages/splash.dart';

var customRoutes = <String, WidgetBuilder>{
  'login': (context) => const WelcomePage(),
  'home': (context) => const HomePage(
        data: {},
      ),
  'sign': (context) => const SignupPage(),
  'formMedico': (context) => const FormMedicoPage(),
  'profile': (context) =>  const ProfilePage(),
  'servicios': (context) => const ServiciosPage(),
  'servicios2': (context) => const ServiciosPage2(),
  'yeyito': (context) => const InfoYeyito(),
  'micuenta': (context) => const MicuentaPage(),
  'password': (context) => const ChangePassword(),
  'forgotPassword': (context) => const ForgotPassword(),
  'splash': (context) => const Splash(),
  'politicas': (context) => const PoliticasPage(),
  // 'editar': (context) => EditarPage(),
  // 'homeScreen': (context) => const HomeScreen(
  //       data: {},
  //     ),
};
