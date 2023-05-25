import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class petPage extends StatefulWidget {
  const petPage({Key? key}) : super(key: key);

  @override
  _petPageState createState() => _petPageState();
}

class _petPageState extends State<petPage> {
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    getDataFromFirebase();
  }

  void getDataFromFirebase() async {
    final snapshots = await FirebaseFirestore.instance.collection('pet').get();
    final docs = snapshots.docs;
    final data = docs.map((doc) => doc.data()).toList();
    setState(() => this.data = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APOYAR "),
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
            ), ListTile(
              title: Text('Apoyar'),
              onTap: () {
                Navigator.pushNamed(context, '/petPage');
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
          Expanded(
            child: data.isNotEmpty
              ? DataTable(
                
                  columns: data[0]
                      .keys
                      .map((key) => DataColumn(label: Text(key)))
                      .toList(),
                  rows: data
                      .map((row) => DataRow(
                          cells: row.values.map((value) => DataCell(Text(value.toString()))).toList()),
                          )
                      
                          
                      .toList(),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
              
          ),
        ],
      )
    );
  }
}
