import 'package:correios_mobile_app/core/components/bloc_screen_builder.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/bloc/search_cep_bloc.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/ui/states/search_cep_view_loading_state.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/ui/widgets/build_search_cep_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SearchCepView extends StatefulWidget {
  const SearchCepView({super.key});

  @override
  State<SearchCepView> createState() => _SearchCepViewState();
}

class _SearchCepViewState extends State<SearchCepView> {
  late SearchCepBloc bloc;

  @override
  void initState() {
    bloc = GetIt.I.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocScreenBuilder(
      state: bloc.state,
      onStable: (state) => Container(),
      onLoading: (state) => const SearchCepViewLoadingState(),
      onEmpty: (state) => Container(),
      onError: (state) => Container(),
      onDefault: BuildSearchCepWidget(
        bloc: bloc,
      ),
    );
  }
}
