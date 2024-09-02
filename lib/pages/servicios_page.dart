import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 120.0),
            child: const Text(
              'Recreación',
              style: TextStyle(
                  fontSize: 30.0, color: Color.fromRGBO(11, 143, 172, 1.0)),
            ))
      ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            
            children: [
              act1(context),
              // act2(context),
              // act3(context),
              act4(context),
              act5(context),
              act6(context),
              act7(context),
              act8(context)

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
            image: AssetImage('assets/cognitivas2.png'),
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
                          'Juegos de mesa',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Mente activa con juegos:\najedrez, uno, dominó, y ¡más!',
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
                    '90m',
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


  // Widget act2(BuildContext context) {
  //   final Uri whatsApp = Uri.parse('https://wa.link/thwyc2');
  //   final size = MediaQuery.of(context).size;
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 20.0),
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
  //     width: size.width * 0.88,
  //     height: size.height * 0.28,
  //     decoration: BoxDecoration(
  //       color: const Color.fromRGBO(130, 195, 255, 0.1),
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //     child: Row(
  //       children: [
  //         const Image(
  //           image: AssetImage(''),
  //           width: 130.0,
  //         ),
  //         const SizedBox(
  //           width: 10.0,
  //         ),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 const Column(
  //                   children: [
  //                     Padding(
  //                       padding: EdgeInsets.only(right: 5),
  //                       child: Text(
  //                         'Actividades cognitivas',
  //                         style: TextStyle(fontSize: 15.0),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 10.0,
  //                     ),
  //                     Text(
  //                       'Clases educativas:\ncocina, tecnología,\ntejido, idiomas.',
  //                       style: TextStyle(color: Colors.grey, fontSize: 12.0),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   width: size.width * 0.0,
  //                 ),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 ElevatedButton(
  //                     onPressed: () async {
  //                       launchUrl(whatsApp);
  //                     },
  //                     child: const Text('Agendar')),
  //                 const SizedBox(width: 10.0),
  //               ],
  //             ),
  //             SizedBox(height: size.height*0.005,),
  //             Row(
  //               children: [
  //                 const Image(
  //                     image: AssetImage('assets/clock.png'), width: 20.0),
  //                 const SizedBox(
  //                   width: 5.0,
  //                 ),
  //                 const Text(
  //                   '1h30m',
  //                   style: TextStyle(fontSize: 17.0),
  //                 ),
  //                 SizedBox(width: size.width*0.04,),
  //                 const Column(
  //                   children: [
  //                     Row(
  //                       children: [
  //                         Image(
  //                           image: AssetImage('assets/person.png'),
  //                           width: 20.0,
  //                         ),
  //                         Text(
  //                           'Cuidador',
  //                           style: TextStyle(fontSize: 15.0),
  //                         )
  //                       ],
  //                     ),
  //                     // SizedBox(
  //                     //   height: 10.0,
  //                     // ),
  //                     // Row(
  //                     //   children: [
  //                     //     Image(
  //                     //       image: AssetImage('assets/money.png'),
  //                     //       width: 20.0,
  //                     //     ),
  //                     //     SizedBox(
  //                     //       width: 7.0,
  //                     //     ),
  //                     //     Text(
  //                     //       '\$5,5',
  //                     //       style: TextStyle(fontSize: 15.0),
  //                     //     )
  //                     //   ],
  //                     // ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  //   Widget act3(BuildContext context) {
  //   final Uri whatsApp = Uri.parse('https://wa.link/thwyc2');
  //   final size = MediaQuery.of(context).size;
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 20.0),
  //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
  //     width: size.width * 0.88,
  //     height: size.height * 0.28,
  //     decoration: BoxDecoration(
  //       color: const Color.fromRGBO(130, 195, 255, 0.1),
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //     child: Row(
  //       children: [
  //         const Image(
  //           image: AssetImage('assets/comunicatorias2.png'),
  //           width: 130.0,
  //         ),
  //         const SizedBox(
  //           width: 10.0,
  //         ),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 const Column(
  //                   children: [
  //                     Padding(
  //                       padding: EdgeInsets.only(right: 5),
  //                       child: Text(
  //                         'Actividades comunitarias',
  //                         style: TextStyle(fontSize: 15.0),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 10.0,
  //                     ),
  //                     Text(
  //                       'Para comunidad Yeyito:\nPaseos culturales,\njuegos en grupo,\ntertulias literarias',
  //                       style: TextStyle(color: Colors.grey, fontSize: 12.0),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ],
  //                 ),
  //                 SizedBox(
  //                   width: size.width * 0.0,
  //                 ),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 ElevatedButton(
  //                     onPressed: () async {
  //                       launchUrl(whatsApp);
  //                     },
  //                     child: const Text('Agendar')),
  //                 const SizedBox(width: 10.0),
  //               ],
  //             ),
  //             SizedBox(height: size.height*0.005,),
  //             Row(
  //               children: [
  //                 const Image(
  //                     image: AssetImage('assets/clock.png'), width: 20.0),
  //                 const SizedBox(
  //                   width: 5.0,
  //                 ),
  //                 const Text(
  //                   '1h45m',
  //                   style: TextStyle(fontSize: 17.0),
  //                 ),
  //                 SizedBox(width: size.width*0.04,),
  //                 const Column(
  //                   children: [
  //                     Row(
  //                       children: [
  //                         Image(
  //                           image: AssetImage('assets/person.png'),
  //                           width: 20.0,
  //                         ),
  //                         Text(
  //                           'Cuidador',
  //                           style: TextStyle(fontSize: 15.0),
  //                         )
  //                       ],
  //                     ),
  //                     // SizedBox(
  //                     //   height: 10.0,
  //                     // ),
  //                     // Row(
  //                     //   children: [
  //                     //     Image(
  //                     //       image: AssetImage('assets/money.png'),
  //                     //       width: 20.0,
  //                     //     ),
  //                     //     SizedBox(
  //                     //       width: 7.0,
  //                     //     ),
  //                     //     Text(
  //                     //       '\$7',
  //                     //       style: TextStyle(fontSize: 15.0),
  //                     //     )
  //                     //   ],
  //                     // ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),https://wa.link/m3cmmc
  //       ],
  //     ),
  //   );
  // }
 Widget act4(BuildContext context) {
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
            image: AssetImage('assets/paseos2.png'),
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
                          'Paseos cortos',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Caminatas cercanas al hogar\npara disfrutar y ejercitarse',
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
              SizedBox(height: size.height*0.006,),
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
                      //   height: 9.0,
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
                      //       '\$4',
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
      height: size.height * 0.28,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(130, 195, 255, 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/yoga_priv.png'),
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
                          'Yoga privada',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Yoga psico-física, ajustadas a\nsu ritmo y necesidades.',
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
              SizedBox(height: size.height*0.006,),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '60min',
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
                            '15',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 9.0,
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
                      //       '\$4',
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
  Widget act6(BuildContext context) {
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
            image: AssetImage('assets/yoga_grup2.png'),
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
                          'Yoga grupal',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Equilibrio y armonía en\nuna clase de yoga',
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
              SizedBox(height: size.height*0.006,),
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
                            '14',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 9.0,
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
                      //       '\$4',
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
  Widget act7(BuildContext context) {
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
            image: AssetImage('assets/meditacion.png'),
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
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Meditación grupal',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Consciencia plena,\nrelajación y serenidad',
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
              SizedBox(height: size.height*0.006,),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '60min',
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
                            '14',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 9.0,
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
                      //       '\$4',
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



  Widget act8(BuildContext context) {
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
            image: AssetImage('assets/respiracion.png'),
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
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Respiración grupal',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Respiración consciente para\nconectar la mente con\nel cuerpo.',
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
              SizedBox(height: size.height*0.006,),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/clock.png'), width: 20.0),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    '60min',
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
                            '14',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 9.0,
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
                      //       '\$4',
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
}