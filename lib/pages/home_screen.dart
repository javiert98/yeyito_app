// // import 'package:yeyito/bloc/provider.dart';

// import 'package:yeyito/presentation/widgets/bottom_navigation_bar.dart';
// import 'package:yeyito/provider/auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:url_launcher/url_launcher.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key, required this.data});

//   final Map<String, dynamic> data;
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreen extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 30.0,
//             ),
//             tituloBien(),
//             const SizedBox(
//               height: 35.0,
//             ),
//             userQuest(),
//             const SizedBox(
//               height: 50.0,
//             ),
//             agendarCita(context),
//             const SizedBox(
//               height: 50.0,
//             ),
//             doctDis(context),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Row(
//         children: [
//           Text("Home"),
//           Text("Perfil")
//         ],
//       ),
//     );
//   }

//   Widget agendarCita(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//             width: size.width * 85,
//             padding: const EdgeInsets.symmetric(horizontal: 25.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Agenda tu próxima actividad',
//                   style: TextStyle(
//                     color: Color.fromRGBO(19, 94, 147, 1.0),
//                     fontSize: 25.0,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 Column(children: [
//                   Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushNamed(context, 'servicios2');
//                         },
//                         child: Stack(
//                           children: [
//                             Container(
//                               width: size.width * 0.20,
//                               height: size.height * 0.12,
//                               alignment: Alignment.centerLeft,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(130, 195, 255, 0.1),
//                                 borderRadius: BorderRadius.circular(20.0),
//                               ),
//                               child: Center(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image(
//                                       image:
//                                           const AssetImage('assets/doctor.png'),
//                                       width: size.height * 0.07,
//                                     ),
//                                     Text(
//                                       'Acompañamiento',
//                                       style: TextStyle(
//                                           fontSize: size.height * 0.011),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 9.0,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushNamed(context, 'servicios');
//                         },
//                         child: Stack(
//                           children: [
//                             Container(
//                               width: size.width * 0.20,
//                               height: size.height * 0.12,
//                               alignment: Alignment.centerLeft,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(221, 0, 0, 0.1),
//                                 borderRadius: BorderRadius.circular(20.0),
//                               ),
//                               child: Center(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image(
//                                         image: const AssetImage(
//                                             'assets/puzzle_piece_.png'),
//                                         width: size.height * 0.065),
//                                     Text(
//                                       'Recreación',
//                                       style: TextStyle(
//                                           fontSize: size.height * 0.011),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 9.0,
//                       ),
//                       Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               showDialog(
//                                   context: context,
//                                   builder: (context) => AlertDialog(
//                                         actions: [
//                                           TextButton(
//                                               onPressed: () {
//                                                 Navigator.of(context).pop();
//                                               },
//                                               child: const Text('Cerrar')),
//                                         ],
//                                         content: const Text(
//                                           'Próximamente',
//                                           style: TextStyle(fontSize: 40.0),
//                                         ),
//                                       ));
//                             },
//                             child: Stack(
//                               children: [
//                                 Container(
//                                   width: size.width * 0.20,
//                                   height: size.height * 0.12,
//                                   alignment: Alignment.centerLeft,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromRGBO(
//                                         130, 255, 187, 0.2),
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   child: Center(
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           image: const AssetImage(
//                                               'assets/ambulance.png'),
//                                           width: size.height * 0.07,
//                                         ),
//                                         Text(
//                                           'Asistencia \n Médica',
//                                           style: TextStyle(
//                                               fontSize: size.height * 0.011),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 9.0,
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               showDialog(
//                                   context: context,
//                                   builder: (context) => AlertDialog(
//                                         actions: [
//                                           TextButton(
//                                               onPressed: () {
//                                                 Navigator.of(context).pop();
//                                               },
//                                               child: const Text('Cerrar')),
//                                         ],
//                                         content: const Text(
//                                           'Próximamente',
//                                           style: TextStyle(fontSize: 40.0),
//                                         ),
//                                       ));
//                             },
//                             child: Stack(
//                               children: [
//                                 Container(
//                                   width: size.width * 0.20,
//                                   height: size.height * 0.12,
//                                   alignment: Alignment.centerLeft,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromRGBO(
//                                         255, 130, 130, 0.1),
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   child: Center(
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           image: const AssetImage(
//                                               'assets/pastilla.png'),
//                                           width: size.height * 0.07,
//                                         ),
//                                         Text(
//                                           'Farmacia',
//                                           style: TextStyle(
//                                               fontSize: size.height * 0.011),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ])
//               ],
//             )),
//       ],
//     );
//   }

//   Widget tituloBien() {
//     final size = MediaQuery.of(context).size;
//     final args = ModalRoute.of(context)!.settings.arguments;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return SafeArea(
//       child: Container(
//           width: size.width * 85,
//           height: size.height * 0.12,
//           padding: const EdgeInsets.symmetric(horizontal: 25.0),
//           child: const Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 '¡Bienvenido!',
//                 style: TextStyle(
//                   color: Color.fromRGBO(19, 94, 147, 1.0),
//                   fontSize: 42.0,
//                 ),
//               ),
//               // Text('${widget.data['nombre']}', style: TextStyle(color: Color.fromRGBO(19, 94, 147, 1.0), fontSize: 25.0,),),
//             ],
//           )),
//     );
//   }

//   Widget userQuest() {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     // final Uri whatsApp = Uri.parse('https://wa.link/rsmfaq');
//     return Container(
//       width: size.width * 85,
//       // height: size.height*0.1,
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: Row(
//         children: [
//           SizedBox(
//             width: size.width * 0.60,
//             child: Text(
//               '${widget.data['nombre']} ¿cómo se siente tu Yeyito el día de hoy?',
//               style: const TextStyle(
//                   color: Color.fromRGBO(19, 94, 147, 1.0),
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.w200),
//             ),
//           ),
//           const SizedBox(width: 40.0),
//           Column(
//             children: [
//               Container(
//                   width: 60.0,
//                   height: 60.0,
//                   decoration: const BoxDecoration(
//                     color: Color.fromRGBO(187, 216, 236, 0.3),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(100),
//                     ),
//                   ),
//                   child: GestureDetector(
//                     onTap: (() {
//                       auth.userState();
//                       Navigator.pushNamed(context, 'profile');
//                     }),
//                     child: const Icon(Icons.person),
//                   )),
//               const Text(
//                 'Perfil',
//                 style: TextStyle(fontSize: 12.0),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   Widget doctDis(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final Uri whatsApp = Uri.parse('https://wa.link/rsmfaq');
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 25.0),
//       height: size.height * 0.25,
//       width: size.width * 0.9,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50.0),
//         gradient: const LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [
//               Color.fromRGBO(186, 216, 237, 1),
//               Color.fromRGBO(191, 215, 232, 1.0)
//             ]),
//       ),
//       child: Row(
//         children: [
//           Row(
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     width: 15.0,
//                     height: 15.0,
//                     margin: const EdgeInsets.only(top: 15, bottom: 15, left: 20),
//                     child: const Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         // Container(
//                         //   width: 15.0,
//                         //   height: 15.0,
//                         //   decoration: const BoxDecoration(
//                         //     color: Color.fromRGBO(94, 255, 110, 1.0),
//                         //     borderRadius: BorderRadius.all(
//                         //       Radius.circular(100),
//                         //     ),
//                         //   ),
//                         // ),
//                         // Container(
//                         //   child: const Text('Doctores Disponibles', style: TextStyle(color: Colors.white, fontSize: 17.0),)
//                         // ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: size.width * 0.0,),
//                   Container(
//                     child: Column(
//                       children: [
//                         Container(
//                           padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0),
//                           child: const Text(
//                           '''Cuida de tus\nYeyitos con\nnosotros 24/7''',
//                           style: TextStyle(color: Colors.white, fontSize: 25.0),
//                           textAlign: TextAlign.start,
//                         )),
//                         ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                backgroundColor: const Color.fromRGBO(
//                                   156, 199, 231, 1.0), // Background color
//                             ),
//                             onPressed: () {
//                               launchUrl(whatsApp);
//                             },
//                             child: const Text(
//                               'Agenda tu cita',
//                               style: TextStyle(color: Colors.white),
//                             ))
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 alignment: Alignment.bottomLeft,
//                 child: const Image(
//                   image: AssetImage('assets/doctora.png'),
//                   width: 195.0,
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
