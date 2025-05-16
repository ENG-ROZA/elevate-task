import 'package:dartz/dartz.dart';
import 'package:flutter_elevate/core/errors/failuer.dart';
import 'package:flutter_elevate/features/products/data/models/product_model.dart';


abstract class ProductRepo {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}
