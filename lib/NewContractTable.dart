import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContTable extends StatefulWidget {
  const ContTable({Key? key}) : super(key: key);

  @override
  State<ContTable> createState() => _ContTableState();
}

class Record {
  final String name;
  final String age;
  //final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {required this.reference})
      : assert(map['name'] != null),
        //assert(map['r_name'] != null),
        assert(map['age'] != null),
        name = map['name'],
       // rName = map['r_name'],
        age = map['age'];

 Record.fromSnapshot(DocumentSnapshot snapshot) : this.fromMap((snapshot.data()) as Map<String, dynamic> , reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$age>";
}

class _ContTableState extends State<ContTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Votes')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('newcontract').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return DataTable(
            columns: [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age')),
             // DataColumn(label: Text('Rapper\nname')),
            ],
            rows: _buildList(context, snapshot.data!.docs)
        );
      },
    );
  }




  List<DataRow> _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return  snapshot.map((data) => _buildListItem(context, data)).toList();
  }



  DataRow _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return DataRow(cells: [
      DataCell(Text(record.name)),
      DataCell(Text(record.age.toString())),
     // DataCell(Text(record.rName)),
    ]);
  }
}