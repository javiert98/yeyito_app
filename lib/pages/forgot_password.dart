import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:yeyito/widgets/loaging_dialogs.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text('Ingrese el correo con el que se registró para recuperar su contraseña', style: TextStyle(fontSize: size.height*0.035),),
              SizedBox(height: size.height*0.06,),
              _cajaCorreo(context),
               SizedBox(height: size.height*0.06,),
               _guardarPassword(context)
            ],
          ),
        ),
      ),
    );
  }


   Widget _cajaCorreo(BuildContext context) {
  final auth = Provider.of<FireBaseAuthProviders>(context);
  final size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.85,
    height: size.height*0.08,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color:const Color.fromRGBO(247, 248, 249, 1.0), 
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
      controller: auth.forgotEmailController,
      style: const TextStyle(
        
        fontSize: 15.0
      ),
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
        hintText: 'Ingresa correo',
        hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))
      ),
      onChanged: (value) {
        auth.emailController.text = value;
      },
    ),
  );
 }


   Widget _guardarPassword(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async{
        showAlertLoadingDialog(context, 'Espere unos segundos');
        final resp = await auth.forgotPassword();
        if(resp == 10){  
          Navigator.pop(context);
          showAlertDialog(context, 'Se envió un correo para la recuperación de la clave');
          auth.forgotEmailController.text = '';
        }else{
          Navigator.pop(context);
          showAlertDialog(context, 'Hubo un error intente nuevamente');
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
          child: Text('Recuperar contraseña', style: TextStyle(color: Colors.white, fontSize: size.height*0.025, fontWeight: FontWeight.w700),)
        ),
      ),
    );
  }


}