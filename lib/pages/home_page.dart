// import 'package:yeyito/bloc/provider.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';
import 'package:yeyito/presentation/widgets/bottom_navigation_bar.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeyito/widgets/elevatedButtom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.data});

  final Map<String, dynamic> data;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            tituloBien(),
            const SizedBox(
              height: 35.0,
            ),
            userQuest(),
            const SizedBox(
              height: 50.0,
            ),
            agendarCita(context),
            const SizedBox(
              height: 50.0,
            ),
            doctDis(context),
            // SizedBox(
            //   height: size.height *0.2,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        //width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xfff5f9fd),
          //borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 70.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, 'Home');
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/image_home.png',
                      width: 40.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 12),
                    //   child: Text('Home', style: TextStyle(fontSize: size.height * 0.02, color: const Color(0xff28587a), fontWeight: FontWeight.w200),),
                    // ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'profile');
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/image_profile.png',
                      width: 40.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 10),
                    //   child: Text('Perfil', style: TextStyle(fontSize: size.height * 0.02, color: const Color(0xff28587a)),),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget agendarCita(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            width: size.width * 85,
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Agenda tu próxima actividad',
                  style: TextStyle(
                    color: const Color.fromRGBO(19, 94, 147, 1.0),
                    fontSize: size.height * 0.03,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Column(children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'servicios2');
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: size.width * 0.20,
                              height: size.height * 0.12,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(130, 195, 255, 0.1),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image:
                                          const AssetImage('assets/doctor.png'),
                                      width: size.height * 0.07,
                                    ),
                                    Text(
                                      'Acompañamiento',
                                      style: TextStyle(
                                          fontSize: size.height * 0.011),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 9.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'servicios');
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: size.width * 0.20,
                              height: size.height * 0.12,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(221, 0, 0, 0.1),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                        image: const AssetImage(
                                            'assets/puzzle_piece_.png'),
                                        width: size.height * 0.065),
                                    Text(
                                      'Recreación',
                                      style: TextStyle(
                                          fontSize: size.height * 0.012),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 9.0,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {  
                             ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.white,
                                  content: const Text('Proximamente', style: TextStyle(color: Colors.blueAccent, fontSize: 20.0),),
                                  action: SnackBarAction(
                                    textColor: Colors.redAccent,
                                    label: 'Cerrar',
                                    onPressed: () {
                                      // Code to execute.
                                    },
                                  ),
                                  duration: const Duration(milliseconds: 1500),
                                  width: 280.0, // Width of the SnackBar.
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        8.0, // Inner padding for SnackBar content.
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: size.width * 0.20,
                                  height: size.height * 0.12,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        130, 255, 187, 0.2),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                              'assets/ambulance.png'),
                                          width: size.height * 0.07,
                                        ),
                                        Text(
                                          'Asistencia \n Médica',
                                          style: TextStyle(
                                              fontSize: size.height * 0.012),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 9.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.white,
                                  content: const Text('Proximamente', style: TextStyle(color: Colors.blueAccent, fontSize: 20.0),),
                                  action: SnackBarAction(
                                    textColor: Colors.redAccent,
                                    label: 'Cerrar',
                                    onPressed: () {
                                      // Code to execute.
                                    },
                                  ),
                                  duration: const Duration(milliseconds: 1500),
                                  width: 280.0, // Width of the SnackBar.
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        8.0, // Inner padding for SnackBar content.
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: size.width * 0.20,
                                  height: size.height * 0.12,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        255, 130, 130, 0.1),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                              'assets/pastilla.png'),
                                          width: size.height * 0.07,
                                        ),
                                        Text(
                                          'Farmacia',
                                          style: TextStyle(
                                              fontSize: size.height * 0.012),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ])
              ],
            )),
      ],
    );
  }

  Widget tituloBien() {
    final size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return SafeArea(
      child: Container(
          width: size.width * 85,
          height: size.height * 0.12,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                    color: const Color.fromRGBO(19, 94, 147, 1.0),
                    fontSize: size.height * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              // Text('${widget.data['nombre']}', style: TextStyle(color: Color.fromRGBO(19, 94, 147, 1.0), fontSize: 25.0,),),
            ],
          )),
    );
  }

  Widget userQuest() {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    // final Uri whatsApp = Uri.parse('https://wa.link/rsmfaq');
    return Container(
      width: size.width * 85,
      // height: size.height*0.1,
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.60,
            child: Text(
              '${auth.userInfo['nombre']} ¿Cómo se siente tu Yeyito el día de hoy?',
              style: TextStyle(
                  color: const Color.fromRGBO(19, 94, 147, 1.0),
                  fontSize: size.height * 0.025,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 40.0),
          Column(
            children: [
              Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(187, 216, 236, 0.3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (() {
                      auth.userState();
                      Navigator.pushNamed(context, 'profile');
                    }),
                    child: const Icon(Icons.person),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget doctDis(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Uri whatsApp = Uri.parse('https://wa.link/m3cmm5');
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.22,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35.0)),
        color: Color.fromRGBO(130, 195, 255, 1.0),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''Cuida de tus\nYeyitos con\nnosotros 24/7''',
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontSize: size.height * 0.03),
                  textAlign: TextAlign.start,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffc9d8e8),
                  ),
                  onPressed: () {
                    launchUrl(whatsApp);
                  },
                  child: AutoSizeText(
                    'Agenda tu cita',
                    style: TextStyle(
                        color: Colors.white, fontSize: size.height * 0.02),
                    minFontSize: 10.0,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 30.0),
            child: Image.asset(
              'assets/doctora.png',
              width: 160.0,
            ),
          )
        ],
      ),
    );
  }
}
