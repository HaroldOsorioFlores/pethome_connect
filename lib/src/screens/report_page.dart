import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class reportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INICIO"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              
              child: Image.asset('lib/src/assets/image_login_pets.jpg', scale:1.5 ,),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                Navigator.pushNamed(context, '/HomePage');
              },
            ),
            ListTile(
              title: Text('Reportar'),
              onTap: () {
                Navigator.pushNamed(context, '/reportPage');
              },
            ),
            ListTile(
              title: Text('Apoyar'),
              onTap: () {
                // TODO: handle menu item 2 press
              },
            ),ListTile(
              title: Text('Ubicar'),
              onTap: () {
                // TODO: handle menu item 2 press
              },
            ),ListTile(
              title: Text('Denunciar'),
              onTap: () {
                // TODO: handle menu item 2 press
              },
            ),ListTile(
              title: Text('Chat Global'),
              onTap: () {
                // TODO: handle menu item 2 press
              },
            ),ListTile(
              title: Text('Salir'),
              onTap: () {
               Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text("data"),
        ],
      ));
  }
}
