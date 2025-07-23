import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';

extension EitherExtensions<L, R> on Either<L, R> {
  R getRight() => (this as Right<L, R>).value;
  L getLeft() => (this as Left<L, R>).value;

  Widget when({
    required Widget Function(L failure) failure,
    required Widget Function(R data) success,
  }) {
    return fold((l) => failure(l), (r) => success(r));
  }
}
