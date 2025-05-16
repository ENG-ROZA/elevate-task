part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {}

final class Productfailuer extends ProductState {
  final String error;
  Productfailuer(this.error);
}

