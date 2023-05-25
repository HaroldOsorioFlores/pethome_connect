import 'package:flutter/material.dart';

import '../../services/firebase_get.dart';

class reportPage extends StatefulWidget {
  @override
  _reportPage createState() => _reportPage();
}

class _reportPage extends State <reportPage> {
  TextEditingController name_pet = TextEditingController(text: "");

  TextEditingController name = TextEditingController(text: "");
  TextEditingController raza = TextEditingController(text: "");
  TextEditingController edad = TextEditingController(text: "");
  TextEditingController castrado = TextEditingController(text: "");

  Future<void> _loadPetData() async {
    Map<String, dynamic> data = await getPet("nombre_de_usuario");
    if (data != null) {
      setState(() {
        name.text = data['name'];
        raza.text = data['raza'];
        edad.text = data['edad'];
        castrado.text = data['castrado'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadPetData();
  }

  @override
  void dispose() {
    name.dispose();
    raza.dispose();
    edad.dispose();
    castrado.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buscar mascota "),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Image.asset(
                  'lib/src/assets/image_login_pets.jpg',
                  scale: 1.5,
                ),
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
                  Navigator.pushNamed(context, '/petPage');
                },
              ),
              ListTile(
                title: Text('Ubicar'),
                onTap: () {
                  // TODO: handle menu item 2 press
                },
              ),
              ListTile(
                title: Text('Denunciar'),
                onTap: () {
                  // TODO: handle menu item 2 press
                },
              ),
              ListTile(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Buscar mascota ",
                style: TextStyle(fontFamily: "cursive", fontSize: 50.0),
              ),
              SizedBox(height: 20),
              TextFormField(
                  controller: name_pet,
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Ingresar Nombre",
                    labelText: "Ingresar Nombre",
                    prefixIcon: Icon(Icons.pets),
                  ),
              ),SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await getPet(name_pet.text);
                      },
                      child: Text('buscar'),
                    ),
                  ],
                ),TextFormField(
                  controller: name,
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Nombre",
                    labelText: name.text,
                    prefixIcon: Icon(Icons.pets),
                  ),
                ),TextFormField(
                  controller: raza,
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Raza",
                    labelText: raza.text,
                    prefixIcon: Icon(Icons.timelapse),
                  ),
                ),TextFormField(
                  controller: edad,
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "edad",
                    labelText: edad.text,
                    prefixIcon: Icon(Icons.brightness_high),
                  ),
                ),TextFormField(
                  controller: castrado,
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "castrado",
                    labelText: castrado.text,
                    prefixIcon: Icon(Icons.pets_rounded),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await editPet(name.text, raza.text, edad.text, castrado.text);
                      },
                      child: Text('Create account'),
                    ),
                  ],
                ),
            ],
          ),
        ));
  }
}
