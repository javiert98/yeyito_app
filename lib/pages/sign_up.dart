// import 'dart:js';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:yeyito/models/patologies.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeyito/widgets/elevatedButtom.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  FireBaseAuthProviders? auth;

  static final List<Vinculo> _vinc = [
    Vinculo(
      id: 1,
      name: 'Hijo(a)',
    ),
    Vinculo(
      id: 2,
      name: 'Nieto(a)',
    ),
    Vinculo(
      id: 3,
      name: 'Sobrino(a)',
    ),
    Vinculo(
      id: 4,
      name: 'Amigo(a)',
    ),
    Vinculo(
      id: 5,
      name: 'Otro',
    ),
  ];

  final _vincs = _vinc
      .map((vincs) => MultiSelectItem<Vinculo>(vincs, vincs.name))
      .toList();

  List<Vinculo> _selectedVinculo = [];

  @override
  void initState() {
    _selectedVinculo = _vinc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _crearEncabezado(context),
              _fullName(context),
              _cajaName(context),
              const SizedBox(height: 20.0),
              _cedula(context),
              _cedulaCaja(context),
              const SizedBox(height: 20.0),
              _passWord(context),
              _cajaPassword(context),
              const SizedBox(height: 20.0),
              _crearEmail(context),
              _cajaCorreo(context),
              const SizedBox(height: 20.0),
              _phone(context),
              _cajaPhone(context),
              const SizedBox(height: 20.0),
              _vinculo(context),
              _cajaVinculo(context),
              const SizedBox(height: 20.0),
              _casiListo(context),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 22.0),
                        width: size.width * 0.85,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.85,
                    // height: size.height*0.20,
                    child: Stack(
                      children: [
                        _fondoBoton(context),
                        // _tituloForm(context),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 20.0),
                width: size.width * 1.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿Ya tienes cuenta?',
                      style: TextStyle(
                          color: const Color.fromRGBO(95, 152, 192, 1.0),
                          fontSize: size.height * 0.02),
                    ),
                    Container(
                        // margin: const EdgeInsets.only(left: 5.0),
                        ),
                    const SizedBox(width: 9.0),
                    InkWell(
                        child: Text(
                          'Inicia sesión',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: size.height * 0.02),
                        ),
                        onTap: () => Navigator.pushNamed(context, 'login'))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _crearEncabezado(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
          width: size.width * 85,
          // height: size.height*0.12,
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                'Crear Una Cuenta Nueva',
                style: TextStyle(
                    color: const Color.fromRGBO(19, 94, 147, 1.0),
                    fontSize: size.height * 0.02),
              ),
            ],
          )),
    );
  }

  Widget _fullName(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: AutoSizeText(
              'Nombre completo',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaName(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 248, 249, 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        textDirection: TextDirection.ltr,
        controller: auth.nameController,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Nombre completo',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
      ),
    );
  }

  Widget _passWord(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: Text(
              'Contraseña',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaPassword(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 248, 249, 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        obscureText: true,
        controller: auth.passwordController,
        style: const TextStyle(color: Colors.black87, fontSize: 15.0),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingresa 6 dígitos numéricos',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
      ),
    );
  }

  Widget _crearEmail(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: Text(
              'Correo electrónico',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaCorreo(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.08,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 248, 249, 1.0),
        borderRadius: BorderRadius.circular(10.0),
        // boxShadow: const [
        // BoxShadow(
        // color: Colors.black26,
        // blurRadius: 3,
        // offset: Offset(0, 2)
        // )
        // ]
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        controller: auth.emailController,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingresa correo',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
        onChanged: (value) {
          auth.emailController.text = value;
        },
      ),
    );
  }

  Widget _phone(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: Text(
              'Número de teléfono',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaPhone(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.08,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 248, 249, 1.0),
        borderRadius: BorderRadius.circular(10.0),
        // boxShadow: const [
        // BoxShadow(
        // color: Colors.black26,
        // blurRadius: 3,
        // offset: Offset(0, 2)
        // )
        // ]
      ),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: auth.phoneController,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Móvil/Casa',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
      ),
    );
  }

  Widget _vinculo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: AutoSizeText(
              'Vínculo con el adulto mayor',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaVinculo(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    // final size = MediaQuery.of(context).size;
    //String? dropdownValue;
    return Container(
      width: size.width * 0.85,
      padding: const EdgeInsets.symmetric(horizontal: .0),
      child: MultiSelectDialogField(
        items: _vincs,
        onConfirm: (results) {
          _selectedVinculo = results;
          auth.yeyitoPatologiesController = results.map((e) => e.name).toList();
          print(auth.yeyitoVincsController);
        },
        listType: MultiSelectListType.CHIP,
        title: Text(
          'Selecciona vínculo',
          style: TextStyle(fontSize: size.height * 0.02),
        ),
        buttonText: Text('Vínculos',
            style: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.02)),
        buttonIcon: const Icon(Icons.family_restroom),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.transparent)),
      ),
    );
  }

  Widget _fondoBoton(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: MyElevatedButton(
        onPressed: () async {
          print(auth.emailController.text);
          print(auth.passwordController.text);
          print(auth.nameController.text);
          print(auth.cedulaController.text);
          print(auth.phoneController.text);

          final resp = await auth.createAccount();
          if (resp != 10) {
            if (resp == 2) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cerrar')),
                  ],
                  title: Center(child: Text('Aviso')),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Clave poco segura',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              );
            }
            if(resp == 3){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cerrar')),
                  ],
                  title: Center(child: Text('Aviso')),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Correo en uso',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              );
            }
          } else {
            Navigator.pushNamed(context, 'formMedico');
          }
          //auth.saveAccountInfo();
        },
        child: Text('Siguiente',
            style:
                TextStyle(color: Colors.white, fontSize: size.height * 0.03)),
      ),
    );
  }

  Widget _tituloForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);

    return GestureDetector(
      onTap: () async {
        print(auth.emailController.text);
        print(auth.passwordController.text);
        print(auth.nameController.text);
        print(auth.cedulaController.text);
        print(auth.phoneController.text);

        final resp = await auth.createAccount();
        if (resp != 10) {
          const Dialog(child: Text('Correo se encuentra en uso'));
        }
        //auth.saveAccountInfo();
        Navigator.pushNamed(context, 'formMedico');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 115.0, vertical: 15.0),
        child: Text(
          'Siguiente',
          style: TextStyle(
            color: Colors.white,
            fontSize: size.height * 0.05,
          ),
        ),
      ),
    );
  }

  Widget _casiListo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          '¡Casi listo! \nAhora solo queremos conocer más sobre tu Yeyito',
          style: TextStyle(
              color: const Color.fromRGBO(19, 94, 147, 1.0),
              fontSize: size.height * 0.03),
        ));
  }

  Widget _cedula(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                //margin: const EdgeInsets.only(right: 225.0),
                child: AutoSizeText(
              'Cédula',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cedulaCaja(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 248, 249, 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        textDirection: TextDirection.ltr,
        controller: auth.cedulaController,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Cédula',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
      ),
    );
  }
}
