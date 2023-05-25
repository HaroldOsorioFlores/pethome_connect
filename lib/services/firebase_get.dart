import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future <void> insertUser(String name, String Lastname, String email, String password) async {
  await db.collection('user').add({
    "nombre":name,
    "apellido":Lastname,
    "email":email,
    "contraseña":password}
    );
}
Future<Map<String, dynamic>> getPet(String name_user) async {
  QuerySnapshot petQuerySnapshot = await db.collection("pet").where('name', isEqualTo: name_user).get();
  Map<String, dynamic> petData = {};
  petQuerySnapshot.docs.forEach((doc) {
     petData = doc.data() as Map<String, dynamic>;
  });
  return petData;
}


Future <void> editPet(String name, String raza, String edad, String castrado) async {
  await db.collection('pet').doc(name).set({
    "nombre":name,
    "raza":raza,
    "edad":edad,
    "castrado":castrado
    });
}
