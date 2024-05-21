import 'package:flutter/material.dart'; 
import 'historial.dart';


class dashboard extends StatelessWidget{

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Dashboard', 
      home: Dashboard(),
    ); 
  } 
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('ParkVision'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('Contenido'),
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
