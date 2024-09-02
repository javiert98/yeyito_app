
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yeyito/pages/home_page.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:yeyito/widgets/loaging_dialogs.dart';
import 'package:flutter/material.dart';

import 'package:yeyito/bloc/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  FireBaseAuthProviders? auth;

  @override
  Widget build(BuildContext context) {
    //final auth = Provider.of<FireBaseAuthProviders>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _crearEncabezado(context),
          const SizedBox(
            height: 30.0,
          ),
          _crearEmail(context),
          const SizedBox(height: 40.0),
          _crearPassword(context),
          const SizedBox(height: 40.0),
          _botonIgresar(context),
          const SizedBox(height: 20.0),
          _olvidoCon(context),
          const SizedBox(height: 85.0),
          _singUp(context),
          const SizedBox(height: 40.0),
          _atc(context),
        ],
      ),
    ));
  }

  Widget _crearEncabezado(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        width: size.width * 0.85,
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Image.asset(
              'assets/yeyitologo.png',
              width: 150.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _crearEmail(BuildContext context) {
    final bloc = Providers.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: AutoSizeText(
              'Correo electrónico',
              style: TextStyle(
                  color: const Color.fromRGBO(9, 64, 103, 1.0),
                  fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
            _cajaCorreo(bloc),
          ],
        ),
      ),
    );
  }

  Widget _cajaCorreo(LoginBloc bloc) => StreamBuilder(
        stream: bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final size = MediaQuery.of(context).size;
          return Container(
            width: size.width * 0.85,
            height: size.height * 0.08,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 248, 249, 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              style: const TextStyle(color: Colors.black87, fontSize: 16.0),
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(19, 94, 147, 1.0),
                ),
                // errorText: snapshot.error.toString() == 'null' || snapshot.data == '' ?  null : snapshot.error.toString()
              ),
              onChanged: bloc.changeEmail,
            ),
          );
        },
      );

  Widget _crearPassword(BuildContext context) {
    final bloc = Providers.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Contraseña',
              style: TextStyle(
                  color: const Color.fromRGBO(9, 64, 103, 1.0),
                  fontSize: size.height * 0.02),
            ),
            const SizedBox(height: 5.0),
            _cajaPassword(bloc),
          ],
        ),
      ),
    );
  }

  Widget _cajaPassword(LoginBloc bloc) => StreamBuilder(
        stream: bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final size = MediaQuery.of(context).size;
          return Container(
            width: size.width * 0.85,
            height: size.height * 0.08,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 248, 249, 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black87, fontSize: 16.0),
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.password,
                  color: Color.fromRGBO(19, 94, 147, 1.0),
                ),
                // errorText: snapshot.error.toString() == 'null' || snapshot.data == '' ?  null : snapshot.error.toString()
              ),
              onChanged: bloc.changePassword,
            ),
          );
        },
      );

  Widget _botonIgresar(BuildContext context) {
    final bloc = Providers.of(context);
    final size = MediaQuery.of(context).size;
    return StreamBuilder(
        stream: bloc.formValidStream,
        builder: (context, snapshot) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.70,
                height: size.height * 0.06,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed:
                      snapshot.hasData ? () => _login(bloc, context) : null,
                  child: Text('Ingresar',
                      style: TextStyle(
                          color: const Color.fromRGBO(19, 94, 147, 1.0),
                          fontSize: size.height * 0.02)),
                ),
              ),

              // Expanded(
              //  child: LocalAuthentication(),
              // )
            ],
          );
        });
  }

  _login(LoginBloc bloc, BuildContext context) async {
    final auth = Provider.of<FireBaseAuthProviders>(context, listen: false);
    final bloc2 = Providers.of(context);
    print('================');
    print('Email: ${bloc.email}');
    print('Password: ${bloc.password}');
    print('================');
    auth.email = bloc.email!;
    auth.password = bloc.password!;

    showAlertLoadingDialog(context, 'Iniciando sesión');

    final resp = await auth.loginUser();

    if (resp == 10) {
      final infoUser = await auth.getUserInfo();
      Navigator.of(context).pop();
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomePage(data: infoUser)));
    } else {
      Navigator.of(context).pop();
      if (resp == 2) {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
            content: const Text(
              'Email no registrado',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }
      if (resp == 3) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
            content: const Text(
              'Contraseña Incorrecta',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }
      if(resp == -1){
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
            content: const Text(
              'Contraseña o Correo Incorrectos',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }
    }
  }

  Widget _singUp(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 50.0),
      width: size.width * 1.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            '¿No tienes cuenta?',
            style: TextStyle(
                // ignore: prefer_const_constructors
                color: Color.fromRGBO(19, 94, 147, 1.0),
                fontSize: size.height * 0.02),
          ),
          Container(
              // margin: const EdgeInsets.only(left: 5.0),
              ),
          const SizedBox(width: 9.0),
          InkWell(
              child: AutoSizeText(
                'Regístrate',
                style: TextStyle(
                    color: Colors.blueAccent, fontSize: size.height * 0.02),
              ),
              onTap: () => {
                    //Navigator.pushNamed(context, 'sign')
                    Navigator.of(context).pushNamed('sign')
                  })
        ],
      ),
    );
  }

  Widget _atc(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.link/m3cmm5');
    return Container(
        width: 60.0,
        height: 60.0,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(187, 216, 236, 0.3),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: GestureDetector(
          onTap: (() async {
            launchUrl(whatsApp);
          }),
          child: const Icon(Icons.headphones_outlined),
        ));
  }

  Widget _olvidoCon(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
        child: AutoSizeText(
          '¿Olvidó su contraseña?',
          style: TextStyle(
              color: const Color.fromRGBO(19, 94, 147, 1.0),
              fontSize: size.height * 0.02),
        ),
        onTap: () => {Navigator.of(context).pushNamed('forgotPassword')});
  }
}
