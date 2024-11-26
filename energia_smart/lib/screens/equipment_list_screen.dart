import 'package:flutter/material.dart';

class EquipmentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Equipamentos')),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Geladeira'),
            subtitle: Text('Consumo: 2 kWh'),
          ),
          ListTile(
            title: Text('Ar-condicionado'),
            subtitle: Text('Consumo: 4 kWh'),
          ),
          ListTile(
            title: Text('TV'),
            subtitle: Text('Consumo: 1 kWh'),
          ),
        ],
      ),
    );
  }
}

