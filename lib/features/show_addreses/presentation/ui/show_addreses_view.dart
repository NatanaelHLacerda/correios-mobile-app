import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:correios_mobile_app/features/show_addreses/presentation/widgets/custom_address_widget.dart';
import 'package:flutter/material.dart';

class ShowAddresesView extends StatefulWidget {
  const ShowAddresesView({super.key});

  @override
  State<ShowAddresesView> createState() => _ShowAddresesViewState();
}

class _ShowAddresesViewState extends State<ShowAddresesView> {
  late List<AddressModel>? arguments;

  @override
  void dispose() {
    arguments?.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    arguments =
        ModalRoute.of(context)?.settings.arguments as List<AddressModel>;

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: arguments!.length,
          itemBuilder: (context, index) {
            final AddressModel address = arguments![index];
            return Column(
              children: [
                CustomAddressWidget(
                  address: address,
                  index: index + 1,
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            );
          }),
    );
  }
}
