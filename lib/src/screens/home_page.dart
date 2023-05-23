import 'package:flutter/material.dart';
import '';

class HomePage extends StatelessWidget {
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
            ),
            ListTile(
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar',
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      // Acción al cambiar el texto del campo de búsqueda
                      // Aquí puedes implementar la lógica de búsqueda
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(right: 8.0, bottom: 1.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "Adoptame",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset('lib/src/assets/image_login_pets.jpg'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 150,
                            child: Image.asset(
                                'lib/src/assets/image_login_pets.jpg'),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 150,
                            child: Image.asset(
                                'lib/src/assets/image_login_pets.jpg'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Acción al presionar el botón de Donar
                            Navigator.pushNamed(context, '/HomePage');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[600],
                          ),
                          child: Text('Donar'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Acción al presionar el botón de Denunciar
                            Navigator.pushNamed(context, '/HomePage');
                          },
                          child: Text('Denunciar'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("WUF"),
                    SizedBox(height: 20),
                    Text("Hope"),
                    SizedBox(height: 20),
                    Text("Voz animal Peru")
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0, bottom: 1.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "ONG",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Acción al presionar el botón de Contactar
                        Navigator.pushNamed(context, '/HomePage');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[200],
                      ),
                      child: Text('Contactar'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Acción al presionar el botón de Contactar
                        Navigator.pushNamed(context, '/HomePage');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[200],
                      ),
                      child: Text('Contactar'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Acción al presionar el botón de Contactar
                        Navigator.pushNamed(context, '/HomePage');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[200],
                      ),
                      child: Text('Contactar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
