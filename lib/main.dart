import 'package:flutter/material.dart';
import 'package:navigasi_flutter2/views/scaffold_widget.dart';
import 'package:navigasi_flutter2/views/login_view.dart';
import 'package:navigasi_flutter2/views/movie_view.dart';
import 'package:navigasi_flutter2/views/profile_view.dart';
import 'package:navigasi_flutter2/views/transaksi_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ScaffoldWidget(),
        '/login': (context) => LoginView(),
        '/transaksi': (context) => TransaksiView(),
        '/profile': (context) => ProfileView(),
        '/movie': (context) => MovieView(),
      },
    );
  }
}
