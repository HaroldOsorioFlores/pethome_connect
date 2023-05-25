import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset('lib/src/assets/image_login_pets.jpg'),
              ),
              Text(
                "Login",
                style: TextStyle(fontFamily: "cursive", fontSize: 50.0),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Acción al presionar el botón de Crear una cuenta
                      Navigator.pushNamed(context, '/SignUpPage');
                    },
                    child: Text('Crear una cuenta'),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Acción al presionar el botón de Crear una cuenta
                      Navigator.pushNamed(context, '/HomePage');
                    },
                    child: Text('Ingresar'),
                  ),
                  SizedBox(height: 10),
                  SizedBox(width: 0),
                  ElevatedButton(
                    onPressed: () {
                      // Acción al presionar el botón de Crear una cuenta
                      Navigator.pushNamed(context, '/SignUpPage');
                    },
                    child: Text('Google'),
                  ),
                ],
                
              ),
              
              
            ],
          ),
        ),
      ),
    );
    Container();
  }
}