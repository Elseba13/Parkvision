import 'package:flutter/material.dart'; 

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'ParkVision', 
      home: HomeScreen()
    ); 
  } 
}

class HomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('ParkVision'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Contenido'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
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
              leading: Icon(Icons.history),
              title: Text('Historial'),
              onTap: () {
                // Acción para Historial
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboards'),
              onTap: () {
                // Acción para Dashboards
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
