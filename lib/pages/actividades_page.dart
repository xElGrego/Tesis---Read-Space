import 'package:flutter/material.dart';

class ActividadesPage extends StatelessWidget {
  const ActividadesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Image.asset('assets/photos/pagina_construccion.png')),
      ),
    );
  }
}
