import 'package:flutter/material.dart';

class TransaksiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List;
    return Column(
      children: [
        Text('Halaman Transaksi'),
        Text('ID: ' + arg[0]['id'].toString()),
        Text('Nama Produk : ${arg[0]['Nama Produk']}'),
        Text('Harga : ${arg[0]['harga']}')
      ],
    );
  }
}
