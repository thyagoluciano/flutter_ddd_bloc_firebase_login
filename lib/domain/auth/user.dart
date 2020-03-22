import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:previsao_app/domain/auth/value_objects.dart';
import 'package:previsao_app/domain/core/entity.dart';
import 'package:previsao_app/domain/core/failures.dart';
import 'package:previsao_app/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
      .andThen(emailAddress.failureOrUnit)
      .fold((l) => some(l), (r) => none());
  }
}