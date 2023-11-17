import 'package:correios_mobile_app/core/architecture/bloc/bloc_event.dart';
import 'package:flutter/material.dart';

abstract class SearchCepEvent extends Event {}

class SearchCepEventOnReady implements SearchCepEvent {}

class SearchCepEventGetCep implements SearchCepEvent {
  final String cep;
  final BuildContext context;

  SearchCepEventGetCep({required this.cep, required this.context});
}
