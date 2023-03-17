import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContTable extends StatefulWidget {
  const ContTable({Key? key}) : super(key: key);

  @override
  State<ContTable> createState() => _ContTableState();
}

class Record {
 // final String contType;
  final String title;
  final String description;
  final String requesterName;
  final String reqstDept;
  final String countName;
  final String countCont;
  final String contEffDate;
  final String contEndDate;
  final String noticePeriod;
  final String Amount;
  final String Tax;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {required this.reference})
      : //assert(map['contType'] != null),
        assert(map['title'] != null),
        assert(map['description'] != null),
        assert(map['requesterName'] != null),
        assert(map['reqstDept'] != null),
        assert(map['countName'] != null),
        assert(map['countCont'] != null),
        assert(map['contEffDate'] != null),
        assert(map['contEndDate'] != null),
        assert(map['noticePeriod'] != null),
        assert(map['Amount'] != null),
        assert(map['Tax'] != null),
       // contType = map['contType'],
        title = map['title'],
        description = map['description'],
        requesterName = map['requesterName'],
        reqstDept = map['reqstDept'],
           countName = map['countName'],
          countCont = map['countCont'],
        contEffDate = map['contEffDate'],
        contEndDate = map['contEndDate'],
        noticePeriod = map['noticePeriod'],
        Amount = map['Amount'],
        Tax = map['Tax'];

 Record.fromSnapshot(DocumentSnapshot snapshot) : this.fromMap((snapshot.data()) as Map<String, dynamic> , reference: snapshot.reference);

  @override
  String toString() => "Record<$title:$description:$requesterName:$reqstDept:$countName:$countCont:$contEffDate:$contEndDate:$noticePeriod:$Amount:$Tax>";
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
        if (!snapshot.hasData) {
          return LinearProgressIndicator();
        }else if(snapshot.hasError){ const Text('No data avaible right now'); }
        return DataTable(
            columns: [
             // DataColumn(label: Text('Contract Type')),
              DataColumn(label: Text('Title')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('Requester Name')),
              DataColumn(label: Text('Requester Dept')),
              DataColumn(label: Text('Counterparty Name')),
              DataColumn(label: Text('Counterparty Contract')),
              DataColumn(label: Text('Contract Effective Date')),
              DataColumn(label: Text('Contract End Date')),
              DataColumn(label: Text('Amount')),
              DataColumn(label: Text('Tax')),
              //DataColumn(label: Text('Contract End Date')),

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
    //  DataCell(Text(record.contType.toString())),
      DataCell(Text(record.title)),
      DataCell(Text(record.description.toString())),
      DataCell(Text(record.requesterName.toString())),
      DataCell(Text(record.reqstDept)),
      DataCell(Text(record.countName)),
      DataCell(Text(record.countCont)),
      DataCell(Text(record.contEffDate)),
      DataCell(Text(record.contEndDate)),
      DataCell(Text(record.noticePeriod)),
      DataCell(Text(record.Amount)),
      DataCell(Text(record.Tax)),

     // DataCell(Text(record.rName)),
    ]);
  }
}
