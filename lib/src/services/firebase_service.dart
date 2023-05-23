import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsuario() async {
  List Usuario = [];
  CollectionReference collectionReferenceUsuario = db.collection('Usuario');

  QuerySnapshot queryUsuario = await collectionReferenceUsuario.get();

  queryUsuario.docs.forEach((documento) {
    Usuario.add(documento.data());
  });

  return Usuario;
}
