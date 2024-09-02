

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';




class ProfilePage extends StatefulWidget {
  
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;
  final ImagePicker _imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    final Uri whatsApp = Uri.parse('https://wa.link/m3cmm5');
    return Scaffold(
      // appBar: AppBar(), 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child:  Text('Perfil', style: TextStyle(color: const Color.fromRGBO(19, 94, 147, 1.0), fontSize: size.height * 0.05, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 25, right: 8, bottom: 8),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    gradient: LinearGradient(
                    begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff84b8e2),
                        Color(0xff82c3ff),
                      ],
                    )
                  ),
                ),  
              ),
          //     Padding(
          //   padding:
          //       const EdgeInsets.only(left: 8.0, top: 25, right: 8, bottom: 8),
          //   child: Stack(
          //     alignment: Alignment.bottomCenter,
          //     children: <Widget>[
          //       ClipOval(
          //         child: SizedBox(
          //           width: 120,
          //           height: 120,
          //           child: _image == null
          //               ? Image.asset(
          //                   'assets/yeyito_profile.png',
          //                   fit: BoxFit.cover,
          //                 )
          //               : Image.file(
          //                   _image!,
          //                   fit: BoxFit.cover,
          //                 ),
          //         ),
          //       ),
          //       Positioned(
          //         left: 80,
          //         right: 0,
          //         child: FloatingActionButton(
          //           heroTag: 'userImage',
          //           backgroundColor: const Color(0xff5f98c0),
          //           child: const Icon(
          //             CupertinoIcons.camera,
          //             // color: isDarkMode(context) ? Colors.black : Colors.white,
          //           ),
          //           mini: true,
          //           onPressed: () async{
          //           _onCameraClick();
                       
          //           } 
          //         ),
          //       )
          //     ],
          //   ),
          // ),
              SafeArea(
                child: SizedBox(
                width: size.width * 1.0,
                  child: Column(
                    children: [
                      Text('${auth.userInfo['nombre']}', 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.height * 0.03)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              infoYeyito(context),
              const SizedBox(height: 50.0,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff5f9fd),
          // borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 70.0,
        // margin: const EdgeInsets.symmetric(horizontal: 10,),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    child: Image.asset('assets/image_home.png', width: 40.0,),
                  ),
                  const SizedBox(width: 10.0,),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 12.0),
                  //   child: Text('Home', style: TextStyle(fontSize: size.height * 0.02, color: const Color(0xff28587a)),),
                  // ),
                  
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, 'profile');
                },
                child: Image.asset('assets/image_profile.png', width: 40.0,),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse? response = await _imagePicker.retrieveLostData();
    if (response == null) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _image = File(response.file!.path);
      });
    }
  }

  _onCameraClick() {
    final action = CupertinoActionSheet(
      message: const Text(
        'Agregar foto de perfil',
        style: TextStyle(fontSize: 15.0),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('Elegir de la galería'),
          isDefaultAction: false,
          onPressed: () async {
            Navigator.pop(context);
            XFile? image =
                await _imagePicker.pickImage(source: ImageSource.gallery);
            if (image != null)
              setState(() {
                _image = File(image.path);
              });
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Tomar un foto'),
          isDestructiveAction: false,
          onPressed: () async {
            Navigator.pop(context);
            XFile? image =
                await _imagePicker.pickImage(source: ImageSource.camera);
            if (image != null)
              setState(() {
                _image = File(image.path);
              });
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Quitar foto'),
          isDestructiveAction: true,
          onPressed: () async {
            Navigator.pop(context);
            setState(() {
              _image = null;
            });
          },
        )
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    showCupertinoModalPopup(context: context, builder: (context) => action);
  }

  

 Widget infoYeyito(BuildContext context) {
  final auth = Provider.of<FireBaseAuthProviders>(context, listen: false);
  final size = MediaQuery.of(context).size;
  final Uri whatsApp = Uri.parse('https://wa.link/m3cmm5');
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.person_2, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Yeyito', style: TextStyle(fontSize: size.height * 0.025),),
              onTap: () => {
                Navigator.of(context).pushNamed('yeyito')
              }
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('yeyito'),
              child: const Icon(Icons.keyboard_arrow_right)
            )  
          ],
        ),
        const SizedBox(height: 25.0,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.person_2, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Mi cuenta', style: TextStyle(fontSize: size.height * 0.025)),
              onTap: () => {
                Navigator.of(context).pushNamed('micuenta')
              }
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'micuenta'),
              child: const Icon(Icons.keyboard_arrow_right)
            )  
          ],  
        ),
        const SizedBox(height: 25.0,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.password, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Cambiar contraseña', style: TextStyle(fontSize: size.height * 0.025)),
              onTap: () => {
                Navigator.of(context).pushNamed('password')
              }
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('password'),
              child: const Icon(Icons.keyboard_arrow_right)
            ), 
          ],
        ),
        const SizedBox(height: 25.0,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.privacy_tip, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Políticas de privacidad', style: TextStyle(fontSize: size.height * 0.025)),
              onTap: () => {
                Navigator.of(context).pushNamed('politicas')
              }
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('politicas'),
              child: const Icon(Icons.keyboard_arrow_right)
            ),
            
          ],
        ),
        const SizedBox(height: 25.0,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.delete_forever, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Borrar cuenta',style: TextStyle(fontSize: size.height * 0.025)),
              onTap: () => {
                showDialog( 
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          auth.deleteuseraccount(auth.userInfo['email'], auth.deleteAccountPassword.text);
                          auth.deleteAccountPassword.text = '';
                          Navigator.of(context).pushNamed('login');
                        },
                        child: const Row(
                          children: [
                            Text('Aceptar', style: TextStyle(color: Colors.red))
                          ],
                        )
                      ),
                    ],
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '¿Seguro que desea borrar su cuenta?',
                        ),
                
                      ],
                    ),
                  )
                )
              }
            ),
            GestureDetector(
              onTap: () => {
                showDialog( 
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          auth.deleteuseraccount(auth.userInfo['email'], auth.deleteAccountPassword.text);
                          auth.deleteAccountPassword.text = '';
                          Navigator.of(context).pushNamed('login');
                        },
                        child: const Text('Aceptar', style: TextStyle(color: Colors.red),)
                      ),
                    ],
                    content: Text(
                      '¿Seguro que desea borrar su cuenta?',
                      style: TextStyle(fontSize: size.height * 0.03),
                    ),
                  )
                )
              },
              child: const Icon(Icons.keyboard_arrow_right)
            ),
            
          ],
        ),
        const SizedBox(height: 25.0,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.logout, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Cerrar sesion', style: TextStyle(fontSize: size.height * 0.025)),
              onTap: () {
                auth.logOut();
                Navigator.popAndPushNamed(context, 'login');
                setState(() {
                  auth.loginUser();
                });
              }
            ),
            GestureDetector(
              onTap: () {
                auth.logOut();
                Navigator.popAndPushNamed(context, 'login');
                setState(() {
                  auth.loginUser();
                });
              }, 
              child: const Icon(Icons.keyboard_arrow_right)
            ),
          ],
        ),
        const SizedBox(height: 25.0,),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(19, 94, 147, 0.1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: const Icon(Icons.help, color: Color.fromRGBO(19, 94, 147, 1.0),)
                )
              ]
            ),
            const SizedBox(width: 15.0,),
            InkWell(
              child: Text('Necesito ayuda', style: TextStyle(fontSize: size.height * 0.025)),
              onTap: (() async{
               launchUrl(whatsApp);
              }),
            ),
            GestureDetector(
              onTap: (() async{
                launchUrl(whatsApp);
              }),
              child: const Icon(Icons.keyboard_arrow_right)
            ),
          ],
        ),
      ],
    ),
  );
 }

 Widget atc(BuildContext context) {
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
          onTap: (() async{
            launchUrl(whatsApp);
          }),
          child: const Icon(Icons.headphones_outlined),
        )
      );
 }
}