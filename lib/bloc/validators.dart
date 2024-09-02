import 'dart:async';
import 'dart:core';




mixin Validators{


   final validarEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink){

      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp   = RegExp(pattern.toString());
      
      if(regExp.hasMatch(email)){
        sink.add(email);
      }else {
        if(email != ''){
          sink.addError('Email no es correcto');
        }
      }
    }
  );
    
  final validarPassword = StreamTransformer<String,String>.fromHandlers(
    handleData: (password,sink){
      if(password.length >= 6){
        sink.add(password);
      }else{
        sink.addError('Mas de 6 caracteres por favor');
      }
    }
  );
}