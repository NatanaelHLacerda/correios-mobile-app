import 'package:correios_mobile_app/core/architecture/bloc/bloc_state.dart';
import 'package:flutter/material.dart';

class BlocScreenBuilder extends StatelessWidget {
  final Stream state;
  final Widget Function(BlocStableState) onStable;
  final Widget Function(BlocLoadingState) onLoading;
  final Widget Function(BlocEmptyState) onEmpty;
  final Widget Function(BlocErrorState) onError;
  final Widget onDefault;

  const BlocScreenBuilder(
      {required this.state,
      required this.onStable,
      required this.onLoading,
      required this.onEmpty,
      required this.onError,
      required this.onDefault,
      super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: state,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data is BlocStableState) {
              return onStable(snapshot.data);
            } else if (snapshot.data is BlocLoadingState) {
              return onLoading(snapshot.data);
            } else if (snapshot.data is BlocEmptyState) {
              return onEmpty(snapshot.data);
            } else if (snapshot.data is BlocErrorState) {
              return onError(snapshot.data);
            }
          }
          return onDefault;
        });
  }
}
