import 'dart:convert';
import 'package:correios_mobile_app/features/search_cep/data/datasources/search_cep_datasource.dart';
import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:http/http.dart' as http;

class SearchCepDatasourceImpl implements SearchCepDatasource{
  @override
  Future<AddressModel> getCepViaCep(String cep) async{
    String url = 'https://viacep.com.br/ws/$cep/json/';

    final response = await http.get(Uri.parse(url));

    final responseBody = jsonDecode(response.body);

    final AddressModel model = AddressModel.fromMap(responseBody);

    return model;
  }

}