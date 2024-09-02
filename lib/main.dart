
import 'package:yeyito/bloc/provider.dart';
import 'package:yeyito/firebase_options.dart';
import 'package:yeyito/pages/splash.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:yeyito/routes/routes.dart';
import 'package:yeyito/presentation/widgets/bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(
          create: (_) => FireBaseAuthProviders(),
          lazy: false,
        ),

      ],
      child: Providers(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: 'splash',
         routes: customRoutes,
          theme: ThemeData(
            colorSchemeSeed: Colors.blueGrey,
            useMaterial3: true
          ),
          builder: (context, child) {
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
        );
      }, 
        ),
      ),
    );   
  }
}

