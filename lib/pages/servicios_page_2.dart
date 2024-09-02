import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiciosPage2 extends StatelessWidget {
  const ServiciosPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 80.0),
            child: const Text(
              'Acompañamiento',
              style: TextStyle(
                  fontSize: 28, color: Color.fromRGBO(11, 143, 172, 1.0)),
            ))
      ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              act1(context),
              act2(context),
              act3(context),
              // act4(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget act1(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.link/thwyc2');
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: size.width * 0.88,
      height: size.height * 0.28,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(130, 195, 255, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/denhogar2.png'),
            width: 130.0,
          ),
          const SizedBox(
            width: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'Dentro del hogar',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Limpieza de casa,\nordenar, cocinar, organizar\ncuartos.',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.0,
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        launchUrl(whatsApp);
                      },
                      child: const Text('Agendar')),
                  const SizedBox(width: 10.0),
                ],
              ),
              SizedBox(height: size.height*0.015,),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '90min',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(width: size.width*0.04,),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/money.png'),
                            width: 20.0,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            '8',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 12.0,
                      // ),
                      // Row(
                      //   children: [
                      //     Image(
                      //       image: AssetImage('assets/money.png'),
                      //       width: 20.0,
                      //     ),
                      //     SizedBox(
                      //       width: 7.0,
                      //     ),
                      //     // Text(
                      //     //   '\$5,5',
                      //     //   style: TextStyle(fontSize: 15.0),
                      //     // )
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget act2(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.link/thwyc2');
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: size.width * 0.88,
      height: size.height * 0.28,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(130, 195, 255, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/fuerahogar2.png'),
            width: 130.0,
          ),
          const SizedBox(
            width: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'Fuera del hogar',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Ida al supermercado,\nfarmacia, compras\nvarias, banco, peluquería.',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.0,
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        launchUrl(whatsApp);
                      },
                      child: const Text('Agendar')),
                  const SizedBox(width: 10.0),
                ],
              ),
              SizedBox(height: size.height*0.015,),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '90min',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(width: size.width*0.04,),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/money.png'),
                            width: 20.0,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            '10',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 12.0,
                      // ),
                      // Row(
                      //   children: [
                      //     Image(
                      //       image: AssetImage('assets/money.png'),
                      //       width: 20.0,
                      //     ),
                      //     SizedBox(
                      //       width: 7.0,
                      //     ),
                      //     Text(
                      //       '\$5,5',
                      //       style: TextStyle(fontSize: 15.0),
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget act3(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.link/thwyc2');
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: size.width * 0.88,
      height: size.height * 0.28,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(130, 195, 255, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/citas_medicas.png'),
            width: 130.0,
          ),
          const SizedBox(
            width: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'Consultas médicas',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Traslado a citas médicas,\n apoyo en comprensión de\ndiagnóstico y tratamiento.',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.0,
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        launchUrl(whatsApp);
                      },
                      child: const Text('Agendar')),
                  const SizedBox(width: 10.0),
                ],
              ),
              SizedBox(height: size.height*0.005,),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '90min',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(width: size.width*0.04,),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/money.png'),
                            width: 20.0,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            '10',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      // Row(
                      //   children: [
                      //     Image(
                      //       image: AssetImage('assets/money.png'),
                      //       width: 20.0,
                      //     ),
                      //     SizedBox(
                      //       width: 7.0,
                      //     ),
                      //     Text(
                      //       '\$7',
                      //       style: TextStyle(fontSize: 15.0),
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

 

  Widget act5(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.link/thwyc2');
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: size.width * 0.88,
      height: size.height * 0.20,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(130, 195, 255, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/paseos2.png'),
            width: 130.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          'Paseos cortos',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Caminatas cercanas del\nhogar para distraerse,\nhacer ejercicio y\ntomar un poco de sol',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/person.png'),
                            width: 20.0,
                          ),
                          Text(
                            'Cuidador',
                            style: TextStyle(fontSize: 12.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/money.png'),
                            width: 20.0,
                          ),
                          SizedBox(
                            width: 7.0,
                          ),
                          Text(
                            '\$4',
                            style: TextStyle(fontSize: 15.0),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        launchUrl(whatsApp);
                      },
                      child: const Text('Agendar')),
                  const SizedBox(width: 20.0),
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '1h00m',
                    style: TextStyle(fontSize: 17.0),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
