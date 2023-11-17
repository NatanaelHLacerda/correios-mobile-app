import 'package:correios_mobile_app/core/failure/failure.dart';
import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:correios_mobile_app/features/search_cep/domain/repositories/search_cep_repository.dart';
import 'package:correios_mobile_app/features/search_cep/domain/usecases/get_cep_via_cep_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCepViaCepUsecaseImpl implements GetCepViaCepUsecase{

  final SearchCepRepository repository;

  GetCepViaCepUsecaseImpl(this.repository);

  @override
  Future<Either<Failure, AddressModel>> getCepViaCep(String cep) async{
    return await repository.getCepViaCep(cep);
  }

}