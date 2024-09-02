// import 'package:get/utils.dart';
// import 'package:yeyito/models/patologies.dart';
// import 'package:yeyito/models/yes_no.dart';
// import 'package:yeyito/provider/auth/firebase_auth.dart';
// import 'package:yeyito/widgets/loaging_dialogs.dart';
// import 'package:flutter/material.dart';
// import 'package:multi_select_flutter/multi_select_flutter.dart';
// import 'package:provider/provider.dart';

// class EditarPage extends StatefulWidget {
//    EditarPage({super.key});

//   @override
//   State<EditarPage> createState() => _EditarPageState();
// }

// class _EditarPageState extends State<EditarPage> {
//   FireBaseAuthProviders? auth;
//   DateTime selectedDate = DateTime.now();

//   static final List<Patology> _patologies = [
//     Patology(
//       id: 1,
//       name: 'Alzheimer',
//     ),
//     Patology(
//       id: 2,
//       name: 'Artritis',
//     ),
//     Patology(
//       id: 3,
//       name: 'Artrosis',
//     ),
//     Patology(
//       id: 4,
//       name: 'Anemia',
//     ),
//     Patology(
//       id: 5,
//       name: 'Cardiacas',
//     ),
//     Patology(
//       id: 6,
//       name: 'Cáncer',
//     ),
//     Patology(
//       id: 7,
//       name: 'Demencia',
//     ),
//     Patology(
//       id: 8,
//       name: 'Diabetes',
//     ),
//     Patology(
//       id: 9,
//       name: 'Discapacidad',
//     ),
//     Patology(
//       id: 10,
//       name: 'Disnea',
//     ),
//     Patology(
//       id: 11,
//       name: 'Fibromialgia',
//     ),
//     Patology(
//       id: 12,
//       name: 'Ictus',
//     ),
//     Patology(
//       id: 13,
//       name: 'Incontinencia',
//     ),
//     Patology(
//       id: 14,
//       name: 'Infarto Cerebral',
//     ),
//     Patology(
//       id: 15,
//       name: 'Obesidad',
//     ),
//     Patology(
//       id: 16,
//       name: 'Osteoporosis',
//     ),
//     Patology(
//       id: 17,
//       name: 'Parkinson',
//     ),
//     Patology(
//       id: 18,
//       name: 'Pérdida de audición',
//     ),
//     Patology(
//       id: 19,
//       name: 'Respiratorias',
//     ),
//     Patology(
//       id: 20,
//       name: 'Visión',
//     ),
//     Patology(
//       id: 21,
//       name: 'Otro',
//     ),
//     Patology(
//       id: 22,
//       name: 'No presenta patologías',
//     ),
//   ];

//   final _patology = _patologies
//       .map((patology) => MultiSelectItem<Patology>(patology, patology.name))
//       .toList();

//   List<Patology> _selectedPatologies = [];

//   @override
//   void initState() {
//     _selectedPatologies = _patologies;
//     super.initState();
//   }

//   bool value = false;

//   final yesno = [
//     CheckboxState(title: 'Sí'),
//     CheckboxState(title: 'No'),
//     CheckboxState(title: 'Tal vez'),
//   ];

//   bool check1 = false;
//   bool check2 = false;
//   bool check3 = false;
//   bool check4 = false;
//   bool check5 = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _tituloForm(context),
//              const SizedBox(height: 20.0),
//             _direccion(context),
//             _direccionCaja(context),
//              const SizedBox(height: 20.0),
//             _phone(context),
//             _cajaPhone(context),
//              const SizedBox(height: 20.0),
//             _peso(context),
//             _cajapeso(context),
//              const SizedBox(height: 20.0),
//             _seguro(context),
//             _selecSeguro(context),
//              const SizedBox(height: 20.0),
//             _nombreSeguro(context),
//             _nombreSeguroCaja(context),
//              const SizedBox(height: 20.0),
//             _mascota(context),
//             _selecmascota(context),
//              const SizedBox(height: 20.0),
//             _tituloMas(context),
//             _tipoMas(context),
//              const SizedBox(height: 20.0),
//             _tituloPatologiasOtro(context),
//             _tipoPa(context),
//              const SizedBox(height: 20.0,),
//             _tituloMotora(context),
//             _selecmotora(context),
//              const SizedBox(height: 20.0,),
//             _tituloMotoOtro(context),
//             _tipoMoto(context),
//              const SizedBox(height: 20.0,),
//             _tituloAlergia(context),
//             _selecAlergia(context),
//              const SizedBox(height: 20.0,),
//             _tituloAlergia2(context),
//             _tipoAlergia(context),
//              const SizedBox(height: 20.0,),
//             _activity(context),
//             _description(context),
//              const SizedBox(height: 20.0,),
//             _juegosMesa(context),
//             _descriptionJuego(context),
//              const SizedBox(height: 20.0,),
//             _temaInteres(context),
//             _descriptionTema(context),
//              const SizedBox(height: 20.0,),
//             Stack(children: [
//               _fondoBoton(context),
//               _tituloListo(context),
//             ]),
//              const SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }


//   Widget _tituloForm(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Container(
//           width: size.width * 85,
//           // height: size.height * 0.12,
//           padding:  const EdgeInsets.symmetric(horizontal: 25.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Tu Yeyito.',
//                 style: TextStyle(
//                     color:  const Color.fromRGBO(19, 94, 147, 1.0), fontSize: size.height * 0.035),
//               ),
//             ],
//           )),
//     );
//   }



//   Widget _direccion(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               'Dirección',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//              const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _direccionCaja(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: TextField(
//         keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoDireccionNewController,
//         style: TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Ingrese dirección nueva',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _phone(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               'Número de teléfono de emergencia',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//              const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _cajaPhone(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//         // boxShadow:  [
//         // BoxShadow(
//         // color: Colors.black26,
//         // blurRadius: 3,
//         // offset: Offset(0, 2)
//         // )
//         // ]
//       ),
//       child: TextField(
//         keyboardType: TextInputType.phone,
//         controller: auth.yeyitoPhoneNewController,
//         style: TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Móvil/Casa',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _peso(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               '¿Cuál es el peso aproximado de su yeyito?',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//              const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _cajapeso(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//         // boxShadow:  [
//         // BoxShadow(
//         // color: Colors.black26,
//         // blurRadius: 3,
//         // offset: Offset(0, 2)
//         // )
//         // ]
//       ),
//       child: TextField(
//         keyboardType: TextInputType.number,
//         controller: auth.yeyitoPesoNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Peso en Kg',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _fondoBoton(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return GestureDetector(
//       onTap: () async {
//         await auth.userChangeInformatio();
//         final resp = await auth.userChangeInformatio();
//         if(resp == 'success'){
//           showAlertDialog(context, 'Informacion actualizada');
//           auth.yeyitoDireccionController.text = '';
//           auth.yeyitoPatologiesController = [];
//           auth.yeyitoPhoneController.text = '';
//           auth.yeyitoTemaIntController.text = '';
//           auth.yeyitoJuegaMesaController.text = '';
//           auth.yeyitoDescripActividadesController.text = '';
//           auth.yeyitoAlergiaController.text = '';
//           auth.yeyitoDiscapacidadController.text = '';
//           auth.yeyitoOtrasPatologiasController.text = '';
//           auth.yeyitoMascotaController.text = '';
//           auth.yeyitoSeguroNameController.text = '';
//           auth.yeyitoPesoController.text = '';
//         }
//       },
//       child: Container(
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//         height: size.height * 0.08,
//         width: size.width * 0.50,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(100.0),
//             gradient:  const LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color.fromRGBO(188, 200, 248, 1.0),
//                   Color.fromRGBO(130, 195, 255, 1.0)
//                 ])),
//       ),
//     );
//   }

//   Widget _tituloListo(BuildContext context) {
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     final size = MediaQuery.of(context).size;
//     return GestureDetector(
//       onTap: () async {
//         await auth.userChangeInformatio();
//         final resp = await auth.userChangeInformatio();
//         if(resp == 'success'){
//           showAlertDialog(context, 'Informacion actualizada');
//           auth.yeyitoDireccionNewController.text = '';
//           auth.yeyitoPatologiesNewController.text = '';
//           auth.yeyitoPhoneNewController.text = '';
//           auth.yeyitoTemaIntNewController.text = '';
//           auth.yeyitoJuegaMesaNewController.text = '';
//           auth.yeyitoDescripActividadesNewController.text = '';
//           auth.yeyitoAlergiaNewController.text = '';
//           auth.yeyitoDiscapacidadNewController.text = '';
//           auth.yeyitoOtrasPatologiasNewController.text = '';
//           auth.yeyitoMascotaNewController.text = '';
//           auth.yeyitoSeguroNameNewController.text = '';
//           auth.yeyitoPesoNewController.text = '';
//         }
//       },
//       child: Container(
//         padding:  const EdgeInsets.symmetric(horizontal: 55.0, vertical: 15.0),
//         child: Text(
//           'Guardar',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: size.height * 0.032,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _seguro(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child:  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               '¿Está asegurado?',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//             const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _selecSeguro(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//         width: size.width * 0.85,
//         height: size.height * 0.17,
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//           color:  const Color.fromRGBO(247, 248, 249, 1.0),
//           borderRadius: BorderRadius.circular(10.0),
//           // boxShadow:  [
//           // BoxShadow(
//           // color: Colors.black26,
//           // blurRadius: 3,
//           // offset: Offset(0, 2)
//           // )
//           // ]
//         ),
//         child: ListView(
//           children: [
//             StatefulBuilder(
//                 builder: (BuildContext context, StateSetter setState) {
//               return Column(
//                 children: [
//                   Row(  
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check1,
//                         onChanged: (value) {
//                           check1 = value!;
//                           check2 = false;
//                           check3 = false;
//                           setState(() {
                            
//                           });
//                         },
//                       ),
//                        Text(
//                         "Sí",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check2,
//                         onChanged: (value) {
//                           check2 = value!;
//                           check1 = false;
//                           check3 = false;
//                           setState(() {
//                           });
//                         },
//                       ),
//                        Text(
//                         "No",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ));
//   }

//   Widget _nombreSeguro(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child:  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               '¿Cuál es el nombre del seguro?',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//             const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _nombreSeguroCaja(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoSeguroNameNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Ingrese nombre del seguro',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _mascota(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child:  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               '¿Tiene mascota?',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//             const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _selecmascota(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//         width: size.width * 0.85,
//         height: size.height * 0.12,
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//           color:  const Color.fromRGBO(247, 248, 249, 1.0),
//           borderRadius: BorderRadius.circular(10.0),
//           // boxShadow:  [
//           // BoxShadow(
//           // color: Colors.black26,
//           // blurRadius: 3,
//           // offset: Offset(0, 2)
//           // )
//           // ]
//         ),
//         child: ListView(
//           children: [
//             StatefulBuilder(
//                 builder: (BuildContext context, StateSetter setState) {
//               return Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check4,
//                         onChanged: (value) {
//                           check4 = value!;
//                           check5 = false;

//                           setState(() {});
//                         },
//                       ),
//                        Text(
//                         "Sí",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check5,
//                         onChanged: (value) {
//                           check4 = false;

//                           setState(() {
//                             check5 = value!;
//                           });
//                         },
//                       ),
//                        Text(
//                         "No",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ));
//   }

//   Widget _tituloMas(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Container(
//         width: size.width * 0.85,
//         padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//         child:  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                 //margin:  EdgeInsets.only(right: 225.0),
//                 child: Text(
//               '¿Cuál mascota tiene?',
//               style: TextStyle(fontSize: size.height * 0.02),
//             )),
//             const SizedBox(height: 5.0),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _tipoMas(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoMascotaNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Tipo de mascota',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }
// }

// Widget _tituloPatologias(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             'Seleccione las patologías, según sea el caso, que presenta el adulto mayor',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _tituloPatologiasOtro(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             'Si su respuesta anterior fue "otro", indique cuál',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _tipoPa(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoOtrasPatologiasNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Tipo de patologia',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _tituloMotora(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             '¿Tiene alguna discapacidad motora?',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }
// Widget _selecmotora(BuildContext context) {
//     bool check6 = false;
//     bool check7 = false;
//     final size = MediaQuery.of(context).size;
//     // final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//         width: size.width * 0.85,
//         height: size.height * 0.12,
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//           color:  const Color.fromRGBO(247, 248, 249, 1.0),
//           borderRadius: BorderRadius.circular(10.0),
//           // boxShadow:  [
//           // BoxShadow(
//           // color: Colors.black26,
//           // blurRadius: 3,
//           // offset: Offset(0, 2)
//           // )
//           // ]
//         ),
//         child: ListView(
//           children: [
//             StatefulBuilder(
//                 builder: (BuildContext context, StateSetter setState) {
//               return Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check6,
//                         onChanged: (value) {
//                           check6 = value!;
//                           check7 = false;

//                           setState(() {});
//                         },
//                       ),
//                        Text(
//                         "Sí",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check7,
//                         onChanged: (value) {
//                           check6 = false;

//                           setState(() {
//                             check7 = value!;
//                           });
//                         },
//                       ),
//                        Text(
//                         "No",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ));
//   }

//   Widget _tituloMotoOtro(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             'Si su respuesta anterior fue "sí", indique cuál',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _tipoMoto(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
      
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoDiscapacidadNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Tipo de discapacidad motora',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _tituloAlergia(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             '¿Tiene alguna alergia?',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }
// Widget _selecAlergia(BuildContext context) {
//     bool check8 = false;
//     bool check9 = false;
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//         width: size.width * 0.85,
//         height: size.height * 0.12,
//         alignment: Alignment.centerLeft,
//         decoration: BoxDecoration(
//           color:  const Color.fromRGBO(247, 248, 249, 1.0),
//           borderRadius: BorderRadius.circular(10.0),
//           // boxShadow:  [
//           // BoxShadow(
//           // color: Colors.black26,
//           // blurRadius: 3,
//           // offset: Offset(0, 2)
//           // )
//           // ]
//         ),
//         child: ListView(
//           children: [
//             StatefulBuilder(
//                 builder: (BuildContext context, StateSetter setState) {
//               return Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check8,
//                         onChanged: (value) {
//                           check9 = false;
//                           setState(() {
//                           check8 = value!;
//                           });
//                         },
//                       ),
//                        Text(
//                         "Sí",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(
//                         activeColor: Colors.blue,
//                         value: check9,
//                         onChanged: (value) {
//                           check8 = false;

//                           setState(() {
//                             check9 = value!;
//                           });
//                         },
//                       ),
//                        Text(
//                         "No",
//                         style: TextStyle(fontSize: size.height * 0.02),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ));
//   }

//   Widget _tituloAlergia2(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             'Si su respuesta anterior fue "sí", indique cuál',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _tipoAlergia(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
      
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoAlergiaNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Tipo de alergia',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _activity(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             'Describe brevemente las actividades que les gusta hacer a tu yeyito:',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _description(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
      
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoDescripActividadesNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Actividades',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _juegosMesa(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             '¿Qué juego de mesa le gusta o le gustaría jugar a tu yeyito?',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _descriptionJuego(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
      
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoJuegaMesaNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Tipos de juegos de mesa',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }

//   Widget _temaInteres(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return SingleChildScrollView(
//     child: Container(
//       width: size.width * 0.85,
//       padding:  const EdgeInsets.symmetric(horizontal: 20.0),
//       child:  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//               //margin:  EdgeInsets.only(right: 225.0),
//               child: Text(
//             '¿Cuál es el tema de interés de tu yeyito?',
//             style: TextStyle(fontSize: size.height * 0.02),
//           )),
//           const SizedBox(height: 5.0),
//         ],
//       ),
//     ),
//   );
// }

// Widget _descriptionTema(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final auth = Provider.of<FireBaseAuthProviders>(context);
//     return Container(
//       width: size.width * 0.85,
//       height: size.height * 0.08,
//       alignment: Alignment.centerLeft,
//       decoration: BoxDecoration(
//         color:  const Color.fromRGBO(247, 248, 249, 1.0),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
      
//       child: TextField(
//         // keyboardType: TextInputType.multiline,
//         textDirection: TextDirection.ltr,
//         controller: auth.yeyitoTemaIntNewController,
//         style:  TextStyle(fontSize: size.height * 0.02),
//         decoration:  const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
//             hintText: 'Temas de interés',
//             hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
//       ),
//     );
//   }