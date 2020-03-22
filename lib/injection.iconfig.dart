// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:google_sign_in/google_sign_in.dart';
import 'package:previsao_app/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:previsao_app/infrastructure/auth/firebase_auth_mapper.dart';
import 'package:previsao_app/infrastructure/auth/firebase_auth_facade.dart';
import 'package:previsao_app/domain/auth/i_auth_facade.dart';
import 'package:previsao_app/application/auth/auth_bloc.dart';
import 'package:previsao_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
          g<FirebaseAuth>(),
          g<GoogleSignIn>(),
          g<FirebaseUserMapper>(),
        ));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
