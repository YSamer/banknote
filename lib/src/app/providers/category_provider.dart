import 'package:banknote/src/app/data/dio/dio_client.dart';
import 'package:banknote/src/app/data/models/category_model.dart';
import 'package:flutter/material.dart';


export 'package:provider/provider.dart';

class CategoryProvider extends ChangeNotifier {
  CategoryModel category;
  CategoryProvider(this.category);

  final _api = DioClient.instance;

  Future<void> getCategoryhDetails() async {
    category = await _api.getcategoryDetails();
    notifyListeners();
  }
}
