import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:provider/provider.dart';
import 'package:yeyito/provider/auth/firebase_auth.dart';

class InfoYeyito extends StatefulWidget {
  const InfoYeyito({super.key});

  @override
  State<InfoYeyito> createState() => _InfoYeyitoState();
}


String? _text;

class _InfoYeyitoState extends State<InfoYeyito> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // actions: [
        //   InkWell(
        //       child: Container(
        //         margin: const EdgeInsets.symmetric(horizontal: 20.0),
        //         child: Text(
        //           'Editar',
        //           style: TextStyle(
        //               color: const Color(0xff5f98c0),
        //               ),
        //         ),
        //       ),
        //       onTap: () => {

        //             Navigator.of(context).pushNamed('editar')
        //           })
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Text('Yeyito',
                style: TextStyle(
                    fontSize: size.height * 0.035,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff5f98c0))),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(child: infoUser(context)),
        ]),
      ),
    );
  }

  Widget infoUser(BuildContext context) {
    final auth = Provider.of<FireBaseAuthProviders>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Stack(children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nombre:',
                    style: TextStyle(
                        color: Color(0xff5f98c0),
                        ),
                  ),
                  Text(
                    '${auth.userInfo['yeyito']['yeyitoNombre']}',
                    style: TextStyle(
                      fontSize: size.height * 0.022,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Cédula:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['yeyitoCedula']}',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Teléfono de emergencia:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['yeyitoTelefono']}',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Dirección:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['yeyitoDireccion']}',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Seguro:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Container(
                    child: _text == null ? Text(
                      'No',
                      style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.bold), 
                    ): Text('${auth.userInfo['yeyito']['yeyitoSeguro']}', style: TextStyle(fontSize: size.height * 0.022),),
                  ),
                  
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Patologías:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Container(
                    child: _text == null ? Text(
                      '${auth.userInfo['yeyito']['yeyitoPatologias']}'.replaceAll(RegExp(r'[(^\[)(\])]'), ''),
                      style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    ) : Text(
                      '${auth.userInfo['yeyito']['yeyitoOtraPatologia']}'
                          .replaceAll(RegExp(r'[(^\[)(\])]'), ''),
                      style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    )
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Fecha de nacimiento:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['yeyitoEdad']}',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Peso:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['yeyitoPeso']} kg',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Juegos de mesa:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['juegoMesa']}',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Actividades favoritas:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Text(
                    '${auth.userInfo['yeyito']['actividadesYeyito']}',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Alergias:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Container(
                    child: _text == null ? Text(
                      'No posee alergias',
                      style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    ) : Text('${auth.userInfo['yeyito']['yeyitoAlergia']}', style: TextStyle(fontSize: size.height * 0.03),),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  
                  const Text('Discapacidad:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                  Container(
                    child: _text == null ? Text(
                      'No posee discapacidad',
                      style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    ) : Text('${auth.userInfo['yeyito']['yeyitoDiscacidad']}', style: TextStyle(fontSize: size.height * 0.03),),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('Mascota:',
                      style: TextStyle(
                          color: Color(0xff5f98c0),
                          )),
                          
                  Container(
                    child: _text == null ? Text(
                      'No tiene mascota',
                      style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    ) : Text('${auth.userInfo['yeyito']['yeyitoMascota']}', style: TextStyle(fontSize: size.height * 0.03),),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
