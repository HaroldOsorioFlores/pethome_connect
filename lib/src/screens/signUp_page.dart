import 'package:flutter/material.dart';
import 'package:pethome_connect/services/firebase_get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController name = TextEditingController(text: "");
  TextEditingController lastname = TextEditingController(text: "");
  TextEditingController email = TextEditingController(text: "");
  TextEditingController password = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sing Up'),
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
                  controller: name,
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
                  controller: lastname,
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
                  controller: email,
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
                  controller: password,
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
                      onPressed: () async {
                        await insertUser(name.text,lastname.text,email.text,password.text).then((_) => {
                          Navigator.pop(context)
                        });
                      },
                      child: Text('Create account'),
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
