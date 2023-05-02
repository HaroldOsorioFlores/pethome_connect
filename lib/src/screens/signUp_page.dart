import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/animal.png'),
                ),
                Text(
                  "Crear cuenta",
                  style: TextStyle(fontFamily: "cursive", fontSize: 50.0),
                ),
                SizedBox(height: 20),
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Primer nombre",
                    labelText: "Primer nombre",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Apellido",
                    labelText: "Apellido",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextFormField(
                  maxLength: 50,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "email",
                    labelText: "email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  maxLength: 15,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Contraseña",
                    labelText: "Contraseña",
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Acción al presionar el botón de Crear una cuenta
                        Navigator.pushNamed(context, '/HomePage');
                      },
                      child: Text('Home'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
    Container();
  }
}
