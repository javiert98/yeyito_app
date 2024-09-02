// ignore_for_file: public_member_api_docs, sort_constructors_first




import 'package:riverpod/riverpod.dart';

import 'package:yeyito/config/local_auth_plugin.dart';

final canCheckBiometricsProvider = FutureProvider<bool>((ref) async{
  return await LocalAuthPluglin.canCheckBioamtric();
  
});


enum LocalAuthStatus{authenticate, notAuthenticated, authenticating}



class LocalAuthState {
  final bool didAuthenticate;
  final LocalAuthStatus status;
  final String message;

  LocalAuthState({
    this.didAuthenticate = false, 
    this.status = LocalAuthStatus.notAuthenticated, 
    this.message = ''
    });


  LocalAuthState copyWith({
    bool? didAuthenticate,
    LocalAuthStatus? status,
    String? message,
  }) {
    return LocalAuthState(
      didAuthenticate: didAuthenticate ?? this.didAuthenticate,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  
}

class LocalAuthNotifier extends StateNotifier<LocalAuthState>{
    LocalAuthNotifier(): super(LocalAuthState());
    

    Future<(bool, String)> authenticateUser() async{
      final (didAuthenticate, message) = await LocalAuthPluglin.authenticate();
    state = state.copyWith(
      didAuthenticate: didAuthenticate,
      message: message,
      status: didAuthenticate ? LocalAuthStatus.authenticate : LocalAuthStatus.notAuthenticated
    );

    return (didAuthenticate, message);
    
  }
}


final localAuthProvider = StateNotifierProvider<LocalAuthNotifier, LocalAuthState>((ref) =>  LocalAuthNotifier());
