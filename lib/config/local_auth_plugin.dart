import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;


class LocalAuthPluglin {
 static final LocalAuthentication auth = LocalAuthentication();


  static availableBiometrics() async{
    final List<BiometricType> availableBiometrics =
    await auth.getAvailableBiometrics();

if (availableBiometrics.isNotEmpty) {
  // Some biometrics are enrolled.
}

if (availableBiometrics.contains(BiometricType.strong) ||
    availableBiometrics.contains(BiometricType.face)) {
  // Specific types of biometrics are available.
  // Use checks like this with caution!
    }
  }
  
  static Future<bool> canCheckBioamtric() async{
    return await auth.canCheckBiometrics;
  }

  static Future<(bool, String)> authenticate() async {
    try{
      final bool didAuthenticate = await auth.authenticate(
    localizedReason: 'Por favor, autenticate para continuar',
    options: const AuthenticationOptions());
    return (didAuthenticate, didAuthenticate ? 'Hecho' : 'Cancelado por usuario');

    } on PlatformException catch (e){
      print('e');
      if(e.code == auth_error.notEnrolled) return (false, 'no hay biometrico');
      if(e.code == auth_error.lockedOut) return (false, 'Demasiados intentos fallidos');  
      if(e.code == auth_error.notAvailable) return (false, 'Version no soporta Biometrico');   
      if(e.code == auth_error.passcodeNotSet) return (false, 'no hay Pin configurado');   
      if(e.code == auth_error.permanentlyLockedOut) return (false, 'Desbloquear con contraseña'); 
       

       return (false, e.toString());
    }
  }
  
}