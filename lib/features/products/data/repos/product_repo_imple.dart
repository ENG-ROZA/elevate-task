import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_elevate/core/Api/api_services.dart';
import 'package:flutter_elevate/core/errors/failuer.dart';
import 'package:flutter_elevate/core/helper/utilities/app_strings.dart';
import 'package:flutter_elevate/features/products/data/models/product_model.dart';
import 'package:flutter_elevate/features/products/data/repos/product_repo.dart';


class ProductRepoImple implements ProductRepo {
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      var response = await ApiServices.get(endPoint: AppStrings.allProducts);
      List<ProductModel> productsList = [];
      for (var item in response['products']) {
        productsList.add(ProductModel.fromJson(item));
      }
      return right(productsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
