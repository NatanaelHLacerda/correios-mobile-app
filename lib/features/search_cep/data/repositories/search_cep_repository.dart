import 'package:correios_mobile_app/core/failure/failure.dart';
import 'package:correios_mobile_app/features/search_cep/data/datasources/search_cep_datasource.dart';
import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:correios_mobile_app/features/search_cep/domain/repositories/search_cep_repository.dart';

import 'package:dartz/dartz.dart';

class SearchCepRepositoryImpl implements SearchCepRepository {
  final SearchCepDatasource datasource;

  SearchCepRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, AddressModel>> getCepViaCep(String cep) async{
    try {
      return Right(await datasource.getCepViaCep(cep));
    } on Exception catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
  

}
