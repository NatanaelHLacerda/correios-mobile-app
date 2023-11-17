import 'package:correios_mobile_app/features/search_cep/presentation/bloc/search_cep_bloc.dart';
import 'package:correios_mobile_app/features/search_cep/presentation/bloc/search_cep_event.dart';
import 'package:flutter/material.dart';

class BuildSearchCepWidget extends StatefulWidget {
  final SearchCepBloc bloc;
  const BuildSearchCepWidget({required this.bloc, super.key});

  @override
  State<BuildSearchCepWidget> createState() => _BuildSearchCepWidgetState();
}

class _BuildSearchCepWidgetState extends State<BuildSearchCepWidget> {
  late TextEditingController cepController;
  late List cepList = widget.bloc.cepList;

  @override
  void initState() {
    cepController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              controller: cepController,
              decoration: InputDecoration(
                labelText: 'Digite o seu CEP',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  widget.bloc.dispatchEvent(
                      SearchCepEventGetCep(context: context, cep: cepController.text));
                },
                icon: const Icon(Icons.search),
                label: const Text(
                  'Consultar',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
