import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';

abstract class SearchCepDatasource {
  Future<AddressModel> getCepViaCep(String cep);
}