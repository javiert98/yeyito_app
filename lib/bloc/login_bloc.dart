import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:yeyito/bloc/validators.dart';




class LoginBloc with Validators{
  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  
  
  
  
  
  //Recuperar los datos del Stream
  Stream<String> get emailStream    => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _passwordController.stream.transform(validarPassword);

  Stream<bool>get formValidStream   => CombineLatestStream.combine2(emailStream,passwordStream,(emailStream,passwordStream)=>true);


  // Insertar valores al stream

  Function(String) get changeEmail    => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add; 

  //obtener el ultimo valor asignado a los streams
  String? get email    => _emailController.valueOrNull;
  String? get password => _passwordController.valueOrNull;
  
  dispose(){
    _emailController.close();
    _passwordController.close();
  }
}