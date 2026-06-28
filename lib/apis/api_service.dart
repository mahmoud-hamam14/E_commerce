import 'package:dio/dio.dart';
import 'package:e_commerce/apis/models/product_model/product_model.dart';



class ProductService {
  final Dio dio = Dio();

  Future<List<ProductModel>> getProducts() async {
    try {
      Response response =
          await dio.get("https://dummyjson.com/products");

      List products = response.data["products"];

      return products
          .map((e) => ProductModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}