import 'package:flutter/material.dart';
import 'package:nueva_app/src/widgets/headers.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: HeaderCuadrado());
    // return Scaffold(body: HeaderBordesRedondeados());
    // return Scaffold(body: HeaderDiagonal());
    // return Scaffold(body: HeaderTriangular());
    // return Scaffold(body: HeaderPico());
    // return Scaffold(body: HeaderCurvo());
    // return Scaffold(body: HeaderWave());
    // return Scaffold(body: HeaderWaveGradient());
    return Scaffold(body: HeaderPicoCusco());
  }
}
