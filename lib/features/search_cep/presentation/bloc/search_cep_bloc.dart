import 'package:correios_mobile_app/core/architecture/bloc/bloc.dart';
import 'package:correios_mobile_app/core/architecture/bloc/bloc_event.dart';
import 'package:correios_mobile_app/core/architecture/bloc/bloc_state.dart';
import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:correios_mobile_app/features/search_cep/domain/usecases/get_cep_via_cep_usecase.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/bloc/search_cep_event.dart';
import 'package:flutter/material.dart';

class SearchCepBloc extends Bloc {
  final GetCepViaCepUsecase getCepViaCepUsecase;

  late List<AddressModel> cepList;
  SearchCepBloc(this.getCepViaCepUsecase) {
    cepList = [];
  }

  @override
  mapListenEvent(Event event) {
    if (event is SearchCepEventOnReady) {
      return _handleSearchCepOnReady();
    } else if (event is SearchCepEventGetCep) {
      _handleGetCep(event.context, event.cep);
    }
  }

  void _handleSearchCepOnReady() {
    dispatchState(BlocStableState(data: null));
  }

  Future _handleGetCep(BuildContext context, String cep) async {
    final result = await getCepViaCepUsecase.getCepViaCep(cep);
    result.fold((l){
    }, (r) {
      cepList.add(r);
      navigateThenUntil(context, '/showAddresesView', cepList);
    });
  }
}
