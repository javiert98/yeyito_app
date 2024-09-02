

import 'package:cloud_firestore/cloud_firestore.dart';



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class FireBaseAuthProviders extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  String email = '';
  String password = '';
  String userUid = '';
  String cedula = '';
  String phone = '';
  String name = '';
  Map<String, dynamic> userInfo = {};
  UserCredential? userLogued;

// Change password
  String passwordOld = '';
  String passwordNew = '';
  String passwordNew2 = '';

// change infomation


String yeyitoDireccionNew = '';         
String yeyitoPatologiesNew = '';        
String yeyitoPhoneNew = '';             
String yeyitoTemaIntNew = '';           
String yeyitoJuegaMesaNew = '';         
String yeyitoDescripActividadesNew = ''; 
String yeyitoAlergiaNew = '';           
String yeyitoDiscapacidadNew = '';      
String yeyitoOtrasPatologiasNew = '';   
String yeyitoMascotaNew = '';           
String yeyitoSeguroNameNew = '';        


TextEditingController yeyitoDireccionNewController          = TextEditingController();
TextEditingController yeyitoPatologiesNewController         = TextEditingController();
TextEditingController yeyitoPhoneNewController              = TextEditingController();
TextEditingController yeyitoTemaIntNewController            = TextEditingController();
TextEditingController yeyitoJuegaMesaNewController          = TextEditingController();
TextEditingController yeyitoDescripActividadesNewController = TextEditingController();
TextEditingController yeyitoAlergiaNewController            = TextEditingController();
TextEditingController yeyitoDiscapacidadNewController       = TextEditingController();
TextEditingController yeyitoOtrasPatologiasNewController    = TextEditingController();
TextEditingController yeyitoMascotaNewController            = TextEditingController();
TextEditingController yeyitoSeguroNameNewController         = TextEditingController();
TextEditingController yeyitoPesoNewController               = TextEditingController();



  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cedulaController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController yeyitoNameController = TextEditingController();
  TextEditingController yeyitoCedulaController = TextEditingController();
  TextEditingController yeyitoPhoneController = TextEditingController();
  String yeyitoEdadController = '';
  TextEditingController yeyitoPesoController = TextEditingController();
  TextEditingController yeyitoDireccionController = TextEditingController();
  TextEditingController yeyitoTemaIntController = TextEditingController();
  TextEditingController yeyitoJuegaMesaController = TextEditingController();
  TextEditingController yeyitoDescripActividadesController = TextEditingController();
  TextEditingController yeyitoAlergiaController = TextEditingController();
  TextEditingController yeyitoDiscapacidadController = TextEditingController();
  TextEditingController yeyitoOtrasPatologiasController = TextEditingController();
  TextEditingController yeyitoMascotaController = TextEditingController();
  TextEditingController yeyitoSeguroNameController = TextEditingController();
  List yeyitoPatologiesController = [];
  List yeyitoVincsController = [];
  TextEditingController passwordOldController = TextEditingController();
  TextEditingController passwordNewController = TextEditingController();
  TextEditingController passwordNew2Controller = TextEditingController();
  TextEditingController forgotEmailController = TextEditingController();
  TextEditingController deleteAccountPassword = TextEditingController();

  Future<int> createAccount() async {
    try {
      final resp = await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      userUid = resp.user!.uid;
      return 10;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return 2;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return 3;
      }else{
        return -1;
      }
      
    } catch (e) {
      print('!!!!!!!!!!!${e}');
      return -1;
    }
  }

  Future<int> saveAccountInfo() async {
    Map<String, dynamic> data = {
      'nombre': nameController.text,
      'cedula': cedulaController.text,
      'telefono': phoneController.text,
      'vinculo': yeyitoVincsController,
      'email': emailController.text,
      'yeyito': {
        'yeyitoNombre'       : yeyitoNameController.text,
        'yeyitoCedula'       : yeyitoCedulaController.text,
        'yeyitoEdad'         : yeyitoEdadController,
        'yeyitoDireccion'    : yeyitoDireccionController.text,
        'yeyitoPatologias'   : yeyitoPatologiesController,
        'yeyitoTelefono'     : yeyitoPhoneController.text,
        'yeyitoPeso'         : yeyitoPesoController.text,
        'temaInteres'        : yeyitoTemaIntController.text,
        'juegoMesa'          : yeyitoJuegaMesaController.text,
        'actividadesYeyito'  : yeyitoDescripActividadesController.text,
        'yeyitoAlergia'      : yeyitoAlergiaController.text,
        'yeyitoDiscacidad'   : yeyitoDiscapacidadController.text,
        'yeyitoOtraPatologia': yeyitoOtrasPatologiasController.text,
        'yeyitoMascota'      : yeyitoMascotaController.text,
        'yeyitoSeguro'       : yeyitoSeguroNameController.text,
      }
    };


    final resp = await db
        .collection('usuarios')
        .doc(userUid)
        .set(data)
        .onError((error, _) => print(error));

    return 10;
  }

  Future<int> loginUser() async {
    try {
      userLogued = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      userUid = userLogued!.user!.uid;
      return 10;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return 2;
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return 3;
      }
      return -1;
    }
  }

  Future<int> logOut() async {
    final resp = await auth.signOut();
    email = '';
    password = '';
    return 10;
  }

  userState() {
    auth.authStateChanges().listen((User? user) {
      if (user != null) {
        print(user.uid);
      }
    });
  }

  Future<Map<String, dynamic>> getUserInfo() async {
    final docRef =
        await db.collection("usuarios").doc(userUid).get().then((value) {
      userInfo = value.data()!;
      print(userInfo);
      return value.data();
    }, onError: (error) {
      return {};
    });

    return docRef!;
  }

  Future<int> userChangePassword() async {
    try {
      await userLogued!.user?.updatePassword('21105184');
      return 10;
    } on FirebaseAuthException catch (e) {
      print(e);
      return -1;
    }
  }



  // Future<String> userChangeInformatio() async{
  //   try{
  //     await userLogued!.user?.updateProfile();
  //     return 'success'; 
  //   }on FirebaseAuthException catch (e) {
  //     print(e);
  //     return 'failed';
  //   }
  // }

  Future<int> forgotPassword() async {
    try {
      await auth.sendPasswordResetEmail(email: forgotEmailController.text);
      return 10;
    } on FirebaseAuthException catch (e) {
      print(e);
      return -1;
    }
  }

  void deleteuseraccount(String email, String password) async {
    User? user = await auth.currentUser;

    try {
      await user?.delete();
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    // await user?.reauthenticateWithCredential(credential).then((value) {
    //   value.user?.delete().then((resp) {
    //     Get.offAll(const WelcomePage());
    //     Get.snackbar('Usuario borrado', 'Success');
    //   });
    // }
    // // ignore: invalid_return_type_for_catch_error
    // )on .catchError((onError) => Get.snackbar('No existe usuario', 'Error'));
  }
}