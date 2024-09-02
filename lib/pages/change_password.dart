import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:yeyito/widgets/loaging_dialogs.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Cambio de contraseña',
            style: TextStyle(
                fontSize: size.height * 0.03, fontWeight: FontWeight.w600),
          ),
          Column(
            children: [
              Text('Ingrese su contraseña nueva', style: TextStyle(fontWeight: FontWeight.w700),),
              _cajaPasswordNew(context),
            ],
          ),
          Column(
            children: [
              Text('Repita su contraseña nueva'),
              _cajaPasswordNew2(context),
            ],
          ),
          _guardarPassword(context),
        ],
      )),
    );
  }

  Widget _cajaPasswordOld(BuildContext context) {
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
        controller: auth.passwordOldController,
        style: const TextStyle(color: Colors.black87, fontSize: 15.0),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingresa contraseña Anterior',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
      ),
    );
  }

  Widget _cajaPasswordNew(BuildContext context) {
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
        controller: auth.passwordNewController,
        style: const TextStyle(color: Colors.black87, fontSize: 15.0),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingrese su nueva contraseña',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
      ),
    );
  }

  Widget _cajaPasswordNew2(BuildContext context) {
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
        controller: auth.passwordNew2Controller,
        style: const TextStyle(color: Colors.black87, fontSize: 15.0),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingrese su nueva contraseña',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
      ),
    );
  }

  Widget _guardarPassword(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async{
        if(auth.passwordNew2Controller.text != auth.passwordNewController.text){
          showAlertDialog(context, 'Las Contraseñas no coinciden');
          return;
        }
        final resp = await auth.userChangePassword();
        if(resp == 10){
          showAlertDialog(context, 'Contraseña Cambiada Exitosamente');
          auth.passwordNew2Controller.text = '';
          auth.passwordNewController.text = '';
        }else{
          showAlertDialog(context, 'Hubo un error inicie sesión e intente nuevamente');
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        height: size.height * 0.08,
        width: size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(188, 200, 248, 1.0),
              Color.fromRGBO(130, 195, 255, 1.0)
            ]
          )
        ),
        child: Center(
          child: Text('Guardar', style: TextStyle(color: Colors.white, fontSize: size.height*0.025, fontWeight: FontWeight.w700),)
        ),
      ),
    );
  }
}
