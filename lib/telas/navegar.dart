import 'package:flutter/material.dart';



class Navegar extends StatefulWidget {
  const Navegar({super.key});

  @override
  State<Navegar> createState() => _NavegarState();
}

class _NavegarState extends State<Navegar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        body: Center(
          child: Text('Página de navegação'),
        ),
    );
  }
}