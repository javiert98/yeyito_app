
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';







class MicuentaPage extends StatefulWidget {
  const MicuentaPage({super.key});

  @override
  State<MicuentaPage> createState() => _MicuentaPage();
}

class _MicuentaPage extends State<MicuentaPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(actions:  const [
      ]),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Text('Tu información', style: TextStyle(fontSize: size.height * 0.035,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff5f98c0))),
            const SizedBox(height: 25.0,),
            Container(
              child: infoUser(context)
            ),
          ]
        ),
      ),
    );
  }

 Widget infoUser(BuildContext context) {
  final auth = Provider.of<FireBaseAuthProviders>(context);
  final size = MediaQuery.of(context).size;
  return  Container(
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Stack(
      children: [
        Container(
          height: size.height * 0.32,
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     width: 2,
          //   ),
          //   borderRadius: BorderRadius.circular(10.0),
          // ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Nombre:', style: TextStyle(
                        color: Color(0xff5f98c0),
                        ),),
              Text('${auth.userInfo['nombre']}', style: TextStyle(fontSize: size.height * 0.022,
                      fontWeight: FontWeight.bold,),),
              const SizedBox(height: 20.0,),
              const Text('Cédula:', style: TextStyle(
                        color: Color(0xff5f98c0),
                        ),),
              Text('${auth.userInfo['cedula']}', style: TextStyle(fontSize: size.height * 0.022,
                      fontWeight: FontWeight.bold,),),
              const SizedBox(height: 20.0,),
              const Text('Teléfono:', style: TextStyle(
                        color: Color(0xff5f98c0),
                        ),),
              Text('${auth.userInfo['telefono']}', style: TextStyle(fontSize: size.height * 0.022, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20.0,),
              const Text('Correo:', style: TextStyle(
                        color: Color(0xff5f98c0),
                        ),),
              Text('${auth.userInfo['email']}', style: TextStyle(fontSize: size.height * 0.022, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ]
    ),
  );
  }
}



