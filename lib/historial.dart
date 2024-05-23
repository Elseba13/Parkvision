import 'package:flutter/material.dart'; 

import 'dashboard.dart';

class historial extends StatelessWidget{

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Historial',
      home: Historial(), 
    ); 
  } 
}

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('ParkVision'),
        backgroundColor: Colors.green,
      ),
      body:  Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 480.0,
          height: 480.0,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Parkvision',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Historial'),
              onTap: () {
                // Acción para Historial
                Navigator.push(context,MaterialPageRoute(builder: (context) => historial(),));
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboards'),
              onTap: () {
                // Acción para Dashboards
                Navigator.push(context,MaterialPageRoute(builder: (context) => dashboard(),));
              },
            ),
          ],
        ),
      ),
    );
  }
}
