import 'package:flutter/material.dart';
import 'package:yeyito/bloc/login_bloc.dart';
export 'package:yeyito/bloc/login_bloc.dart';



class Providers extends InheritedWidget {

  static Providers? _instancia;

  factory Providers({required Widget child }) {

    _instancia =  Providers._internal(child: child );
  
    return _instancia!;

  }

  Providers._internal({required Widget child })
    : super(child: child );


  final loginBloc = LoginBloc();

  

  // Provider({super.key, required super.child});
  
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LoginBloc of (BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Providers>() as Providers).loginBloc;
  }

}