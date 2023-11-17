import 'package:correios_mobile_app/features/search_cep/data/model/address_model.dart';
import 'package:flutter/material.dart';

final TextStyle textStyleTitle = TextStyle(
  fontSize: 10,
  color: Colors.grey.shade500,
  fontWeight: FontWeight.w500,
);

const TextStyle textStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w600,
);

class CustomAddressWidget extends StatelessWidget {
  final AddressModel address;
  final int index;
  const CustomAddressWidget(
      {required this.index, required this.address, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: index % 2 == 1 ? Colors.green.shade50 : Colors.red.shade50,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'ENDEREÇO N° $index',
                style: textStyle,
              ),
              CustomCard(
                title: 'CEP CONSULTADO',
                information: address.cep,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomCard(
                          title: 'CIDADE', information: address.localidade)),
                  Expanded(
                      child:
                          CustomCard(title: 'ESTADO', information: address.uf))
                ],
              ),
              CustomCard(
                title: 'LOGRADOURO',
                information: address.logradouro,
              ),
              CustomCard(
                title: 'BAIRRO',
                information: address.bairro,
              ),
              CustomCard(
                title: 'COMPLEMENTO',
                information: address.complemento,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomCard(
                          title: 'CÓDIGO DO IBGE', information: address.ibge)),
                  Expanded(
                      child: CustomCard(title: 'DDD', information: address.ddd))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String title;
  final String information;
  const CustomCard({
    required this.title,
    required this.information,
    super.key,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Column(
            children: [
              Text(
                widget.title,
                style: textStyleTitle,
              ),
              Text(
                widget.information,
                style: textStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
