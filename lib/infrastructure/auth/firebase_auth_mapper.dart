import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:previsao_app/domain/auth/user.dart';
import 'package:previsao_app/domain/auth/value_objects.dart';
import 'package:previsao_app/domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
      ? null
      : User(
        id: UniqueId.fromDbId(_.uid),
        name: StringSingleLine(_.displayName ?? _.email.split('@').first),
        emailAddress: EmailAddress(_.email)
      );
  }
}