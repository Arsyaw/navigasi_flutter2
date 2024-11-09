import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/movie');
            },
            child: Text('Movie')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/profile');
            },
            child: Text('Profile')),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/transaksi',
              arguments: [
                {
                  'id': 1,
                  'nama_produk': 'meja',
                  'harga': 5000,
                },
                {
                  'id': 2,
                  'nama_produk': 'kursi',
                  'harga': 2000,
                },
              ],
            );
          },
          child: Text('Transaksi'),
        )
      ],
    );
  }
}
