import 'package:correios_mobile_app/core/failure/failure.dart';
import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchCepRepository {
  Future<Either<Failure, AddressModel>> getCepViaCep(String cep);
}