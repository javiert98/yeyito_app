import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:yeyito/models/patologies.dart';
import 'package:yeyito/models/yes_no.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';
import 'package:yeyito/widgets/elevatedButtom.dart';
import 'package:yeyito/widgets/loaging_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';

class FormMedicoPage extends StatefulWidget {
  const FormMedicoPage({super.key});

  @override
  State<FormMedicoPage> createState() => _FormMedicoPageState();
}

String? _font;

class _FormMedicoPageState extends State<FormMedicoPage> {
  FireBaseAuthProviders? auth;
  DateTime selectedDate = DateTime.now();

  static final List<Patology> _patologies = [
    Patology(
      id: 1,
      name: 'Alzheimer',
    ),
    Patology(
      id: 2,
      name: 'Artritis',
    ),
    Patology(
      id: 3,
      name: 'Artrosis',
    ),
    Patology(
      id: 4,
      name: 'Anemia',
    ),
    Patology(
      id: 5,
      name: 'Cardiacas',
    ),
    Patology(
      id: 6,
      name: 'Cáncer',
    ),
    Patology(
      id: 7,
      name: 'Demencia',
    ),
    Patology(
      id: 8,
      name: 'Diabetes',
    ),
    Patology(
      id: 9,
      name: 'Discapacidad',
    ),
    Patology(
      id: 10,
      name: 'Disnea',
    ),
    Patology(
      id: 11,
      name: 'Fibromialgia',
    ),
    Patology(
      id: 12,
      name: 'Ictus',
    ),
    Patology(
      id: 13,
      name: 'Incontinencia',
    ),
    Patology(
      id: 14,
      name: 'Infarto Cerebral',
    ),
    Patology(
      id: 15,
      name: 'Obesidad',
    ),
    Patology(
      id: 16,
      name: 'Osteoporosis',
    ),
    Patology(
      id: 17,
      name: 'Parkinson',
    ),
    Patology(
      id: 18,
      name: 'Pérdida de audición',
    ),
    Patology(
      id: 19,
      name: 'Respiratorias',
    ),
    Patology(
      id: 20,
      name: 'Visión',
    ),
    Patology(
      id: 21,
      name: 'Otro',
    ),
    Patology(
      id: 22,
      name: 'No presenta patologías',
    ),
  ];

  final _patology = _patologies
      .map((patology) => MultiSelectItem<Patology>(patology, patology.name))
      .toList();

  List<Patology> _selectedPatologies = [];

  @override
  void initState() {
    _selectedPatologies = _patologies;
    super.initState();
  }

  bool value = false;

  final yesno = [
    CheckboxState(title: 'Sí'),
    CheckboxState(title: 'No'),
    CheckboxState(title: 'Tal vez'),
  ];

  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;
  bool check7 = false;
  bool check8 = false;
  bool check9 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _tituloForm(context),
            const SizedBox(height: 20.0),
            _nombreCompleto(context),
            _cajaName(context),
            const SizedBox(height: 20.0),
            _cedula(context),
            _cedulaCaja(context),
            const SizedBox(height: 20.0),
            _edad(context),
            dateTime(context),
            const SizedBox(height: 20.0),
            _direccion(context),
            _direccionCaja(context),
            const SizedBox(height: 20.0),
            _phone(context),
            _cajaPhone(context),
            const SizedBox(height: 20.0),
            _peso(context),
            _cajapeso(context),
            const SizedBox(height: 20.0),
            _seguro(context),
            _selecSeguro(context),
            const SizedBox(height: 20.0),
            _nombreSeguro(context),
            _nombreSeguroCaja(context),
            const SizedBox(height: 20.0),
            _mascota(context),
            _selecmascota(context),
            const SizedBox(height: 20.0),
            _tituloMas(context),
            _tipoMas(context),
            const SizedBox(height: 20.0),
            _tituloPatologias(context),
            _cajaPatologias(context),
            const SizedBox(height: 20.0),
            _tituloPatologiasOtro(context),
            _tipoPa(context),
            const SizedBox(
              height: 20.0,
            ),
            _tituloMotora(context),
            _selecmotora(context),
            const SizedBox(
              height: 20.0,
            ),
            _tituloMotoOtro(context),
            _tipoMoto(context),
            const SizedBox(
              height: 20.0,
            ),
            _tituloAlergia(context),
            _selecAlergia(context),
            const SizedBox(
              height: 20.0,
            ),
            _tituloAlergia2(context),
            _tipoAlergia(context),
            const SizedBox(
              height: 20.0,
            ),
            _activity(context),
            _description(context),
            const SizedBox(
              height: 20.0,
            ),
            _juegosMesa(context),
            _descriptionJuego(context),
            const SizedBox(
              height: 20.0,
            ),
            _temaInteres(context),
            _descriptionTema(context),
            const SizedBox(
              height: 20.0,
            ),
            Stack(children: [
              _fondoBoton(context),
              // _tituloListo(context),
            ]),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaPatologias(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      // height: size.height * 0.07,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 248, 249, 1.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: _patologias(context),
    );
  }

  Widget _patologias(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    //String? dropdownValue;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: .0),
      child: MultiSelectDialogField(
        items: _patology,
        onConfirm: (results) {
          _selectedPatologies = results;
          auth.yeyitoPatologiesController = results.map((e) => e.name).toList();
          print(auth.yeyitoPatologiesController);
        },
        listType: MultiSelectListType.CHIP,
        title: Text(
          'Selecciona tipo de patología',
          style: TextStyle(fontSize: size.height * 0.02),
        ),
        buttonText: Text('Patologías',
            style: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.02)),
        buttonIcon: const Icon(Icons.medication_rounded),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.transparent)),
      ),
    );
  }

  Widget _tituloForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          width: size.width * 85,
          // height: size.height * 0.12,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tu Yeyito.',
                style: TextStyle(
                    color: const Color.fromRGBO(19, 94, 147, 1.0),
                    fontSize: size.height * 0.03),
              ),
            ],
          )),
    );
  }

  Widget _nombreCompleto(BuildContext context) {
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
        controller: auth.yeyitoNameController,
        style: TextStyle(fontSize: size.height * 0.02),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Nombre completo',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
      ),
    );
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
                child: Text(
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
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
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
        controller: auth.yeyitoCedulaController,
        style: TextStyle(fontSize: size.height * 0.02),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Cédula',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
      ),
    );
  }

  Widget _edad(BuildContext context) {
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
              'Fecha de nacimiento',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget dateTime(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Stack(
      children: [
        Container(
          width: size.width * 0.85,
          height: size.height * 0.08,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(247, 248, 249, 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        GestureDetector(
          onTap: () async {
            await _selectDate(context);
            setState(() {
              auth.yeyitoEdadController =
                  selectedDate.toString().substring(0, 11);
            });
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
            child: Text(
              "${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year}",
              style: TextStyle(
                color: const Color.fromRGBO(107, 183, 241, 0.8),
                fontSize: size.height * 0.03,
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? dateTime2 = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime(3000));

    if (dateTime2 != null && dateTime2 != selectedDate) {
      setState(() {
        selectedDate = dateTime2;
      });
    }
  }

  Widget _direccion(BuildContext context) {
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
              'Dirección',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _direccionCaja(BuildContext context) {
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
        keyboardType: TextInputType.multiline,
        textDirection: TextDirection.ltr,
        controller: auth.yeyitoDireccionController,
        style: TextStyle(fontSize: size.height * 0.02),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingrese dirección',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
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
              'Número de teléfono de emergencia',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajaPhone(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
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
        controller: auth.yeyitoPhoneController,
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

  Widget _peso(BuildContext context) {
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
              '¿Cuál es el peso aproximado de su yeyito?',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _cajapeso(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
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
        keyboardType: TextInputType.number,
        controller: auth.yeyitoPesoController,
        style: TextStyle(fontSize: size.height * 0.02),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Peso en Kg',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
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
          showAlertLoadingDialog(context, 'Creando Acceso');
          await auth.createAccount();
          await auth.saveAccountInfo();
          Navigator.of(context).pop();
          Navigator.pushNamed(context, 'login');
        },
        child: Text('Inciar sesión',
            style:
                TextStyle(color: Colors.white, fontSize: size.height * 0.03)),
      ),
    );
  }



  Widget _tituloListo(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () async {
        await auth.createAccount();
        await auth.saveAccountInfo();
        Navigator.pushNamed(context, 'login');
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02, vertical: size.height * 0.001),
        child: Text(
          'Inicia Sesión',
          style: TextStyle(
            color: Colors.white,
            fontSize: size.height * 0.04,
          ),
        ),
      ),
    );
  }

  Widget _seguro(BuildContext context) {
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
              '¿Está asegurado?',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _selecSeguro(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
        width: size.width * 0.85,
        height: size.height * 0.11,
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
        child: ListView(
          children: [
            StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        value: check1,
                        onChanged: (value) {
                          check1 = value!;
                          check2 = false;
                          setState(() {});
                        },
                      ),
                      Text(
                        "Sí",
                        style: TextStyle(fontSize: size.height * 0.02),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        value: check2,
                        onChanged: (value) {
                          check2 = value!;
                          check1 = false;
                          setState(() {});
                        },
                      ),
                      Text(
                        "No",
                        style: TextStyle(fontSize: size.height * 0.02),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ],
        ));
  }

  Widget _nombreSeguro(BuildContext context) {
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
              '¿Cuál es el nombre del seguro?',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _nombreSeguroCaja(BuildContext context) {
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
        // keyboardType: TextInputType.multiline,
        textDirection: TextDirection.ltr,
        controller: auth.yeyitoSeguroNameController,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Ingrese nombre del seguro',
            hintStyle: TextStyle(
                color: const Color.fromRGBO(133, 133, 133, 1.0),
                fontSize: size.height * 0.02)),
      ),
    );
  }

  Widget _mascota(BuildContext context) {
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
              '¿Tiene mascota?',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _selecmascota(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final auth = Provider.of<FireBaseAuthProviders>(context);
    return Container(
        width: size.width * 0.85,
        height: size.height * 0.11,
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
        child: ListView(
          children: [
            StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        value: check4,
                        onChanged: (value) {
                          check4 = value!;
                          check5 = false;

                          setState(() {});
                        },
                      ),
                      Text(
                        "Sí",
                        style: TextStyle(fontSize: size.height * 0.02),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        value: check5,
                        onChanged: (value) {
                          check4 = false;

                          setState(() {
                            check5 = value!;
                          });
                        },
                      ),
                      Text(
                        "No",
                        style: TextStyle(fontSize: size.height * 0.02),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ],
        ));
  }

  Widget _tituloMas(BuildContext context) {
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
              '¿Cuál mascota tiene?',
              style: TextStyle(fontSize: size.height * 0.02),
            )),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _tipoMas(BuildContext context) {
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
        // keyboardType: TextInputType.multiline,
        textDirection: TextDirection.ltr,
        controller: auth.yeyitoMascotaController,
        style: TextStyle(fontSize: size.height * 0.02),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Tipo de mascota',
            hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
      ),
    );
  }


Widget _tituloPatologias(BuildContext context) {
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
            'Seleccione las patologías, según sea el caso, que presenta el adulto mayor',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _tituloPatologiasOtro(BuildContext context) {
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
            'Si su respuesta anterior fue "otro", indique cuál',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _tipoPa(BuildContext context) {
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
      // keyboardType: TextInputType.multiline,
      textDirection: TextDirection.ltr,
      controller: auth.yeyitoOtrasPatologiasController,
      style: TextStyle(fontSize: size.height * 0.02),
      decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          hintText: 'Tipo de patologia',
          hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
    ),
  );
}

Widget _tituloMotora(BuildContext context) {
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
            '¿Tiene alguna discapacidad motora?',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _selecmotora(BuildContext context) {
  // bool check6 = false;
  // bool check7 = false;
  final size = MediaQuery.of(context).size;
  // final auth = Provider.of<FireBaseAuthProviders>(context);
  return Container(
      width: size.width * 0.85,
      height: size.height * 0.12,
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
      child: ListView(
        children: [
          StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: Colors.blue,
                      value: check6,
                      onChanged: (value) {
                        check6 = value!;
                        check7 = false;

                        setState(() {});
                      },
                    ),
                    Text(
                      "Sí",
                      style: TextStyle(fontSize: size.height * 0.02),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: Colors.blue,
                      value: check7,
                      onChanged: (value) {
                        check6 = false;

                        setState(() {
                          check7 = value!;
                        });
                      },
                    ),
                    Text(
                      "No",
                      style: TextStyle(fontSize: size.height * 0.02),
                    ),
                  ],
                ),
              ],
            );
          }),
        ],
      ));
}

Widget _tituloMotoOtro(BuildContext context) {
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
            'Si su respuesta anterior fue "sí", indique cuál',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _tipoMoto(BuildContext context) {
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
      // keyboardType: TextInputType.multiline,
      textDirection: TextDirection.ltr,
      controller: auth.yeyitoDiscapacidadController,
      style: TextStyle(fontSize: size.height * 0.02),
      decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          hintText: 'Tipo de discapacidad motora',
          hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
    ),
  );
}

Widget _tituloAlergia(BuildContext context) {
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
            '¿Tiene alguna alergia?',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _selecAlergia(BuildContext context) {
  // bool check8 = false;
  // bool check9 = false;
  final size = MediaQuery.of(context).size;
  final auth = Provider.of<FireBaseAuthProviders>(context);
  return Container(
      width: size.width * 0.85,
      height: size.height * 0.12,
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
      child: ListView(
        children: [
          StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: Colors.blue,
                      value: check8,
                      onChanged: (value) {
                        check9 = false;
                        setState(() {
                          check8 = value!;
                        });
                      },
                    ),
                    Text(
                      "Sí",
                      style: TextStyle(fontSize: size.height * 0.02),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: Colors.blue,
                      value: check9,
                      onChanged: (value) {
                        check8 = false;

                        setState(() {
                          check9 = value!;
                        });
                      },
                    ),
                    Text(
                      "No",
                      style: TextStyle(fontSize: size.height * 0.02),
                    ),
                  ],
                ),
              ],
            );
          }),
        ],
      ));
}

Widget _tituloAlergia2(BuildContext context) {
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
            'Si su respuesta anterior fue "sí", indique cuál',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _tipoAlergia(BuildContext context) {
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
      // keyboardType: TextInputType.multiline,
      textDirection: TextDirection.ltr,
      controller: auth.yeyitoAlergiaController,
      style: TextStyle(fontSize: size.height * 0.02),
      decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          hintText: 'Tipo de alergia',
          hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
    ),
  );
}

Widget _activity(BuildContext context) {
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
            'Describe brevemente las actividades que les gusta hacer a tu yeyito:',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _description(BuildContext context) {
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
      // keyboardType: TextInputType.multiline,
      textDirection: TextDirection.ltr,
      controller: auth.yeyitoDescripActividadesController,
      style: TextStyle(fontSize: size.height * 0.02),
      decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          hintText: 'Actividades',
          hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
    ),
  );
}

Widget _juegosMesa(BuildContext context) {
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
            '¿Qué juego de mesa le gusta o le gustaría jugar a tu yeyito?',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _descriptionJuego(BuildContext context) {
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
      // keyboardType: TextInputType.multiline,
      textDirection: TextDirection.ltr,
      controller: auth.yeyitoJuegaMesaController,
      style: TextStyle(fontSize: size.height * 0.02),
      decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          hintText: 'Tipos de juegos de mesa',
          hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
    ),
  );
}

Widget _temaInteres(BuildContext context) {
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
            '¿Cuál es el tema de interés de tu yeyito?',
            style: TextStyle(fontSize: size.height * 0.02),
          )),
          const SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}

Widget _descriptionTema(BuildContext context) {
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
      // keyboardType: TextInputType.multiline,
      textDirection: TextDirection.ltr,
      controller: auth.yeyitoTemaIntController,
      style: TextStyle(fontSize: size.height * 0.02),
      decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          hintText: 'Temas de interés',
          hintStyle: TextStyle(color: Color.fromRGBO(133, 133, 133, 1.0))),
    ),
  );
}
}