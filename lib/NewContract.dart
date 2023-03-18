import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_page/utils/responsiveLayout.dart';
import 'add_data.dart';
import 'Login.dart';


class NewCont extends StatefulWidget {
  const NewCont({Key? key}) : super(key: key);

  @override
  State<NewCont> createState() => _NewContState();
}

class _NewContState extends State<NewCont> {
  TextEditingController _nameController=new TextEditingController();
  TextEditingController _ageController=new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _ageController = TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
             NewBody()
            ],
          ),
        ),
      ),


    );

    /*return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Add Data'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field is required';
                  }
                  if (value.contains(",")) {
                    return 'Use of commas not allowed';
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field is required';
                  }
                  if (value.contains(",")) {
                    return 'Use of commas not allowed';
                  }
                  if(int.tryParse(value)!<=0 || int.tryParse(value)== null){
                    return 'Illegal age value provided';
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.maxFinite,
                child: TextButton.icon(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if(!_formKey.currentState!.validate()){
                      return;
                    }
                    addData();
                    //else TODO: add method to save data into csv
                  },
                  icon: Icon(Icons.save),
                  label: Text('SAVE'),
                ),
              ),
            ],
          ),
        ),
      ),
    );*/

  }
  /*addData() async {
    String csvString = "${_nameController.text},${_ageController.text}";
    print(csvString);
    bool done = await addDataToCSV(csvString);
    SnackBar snackBar;
    if (!done) {
      snackBar = SnackBar(
        content: Text('Unable to write to file'),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
      );
      //  Fluttertoast.showToast(msg: 'Unable to write to file');
    } else {
      snackBar = SnackBar(
        content: Text('Data written to file'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      );
      //Fluttertoast.showToast(msg: 'Data written to file');
    }
    //Scaffold.of(context)!.showSnackBar(snackBar);
    //_scaffoldKey.currentState!.showSnackBar(snackBar);
  }*/

}

class NewBody extends StatelessWidget {
  const NewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: NewWeb(),
      mediumScreen: MediumChild(),
      smallScreen: NewMob(),
    );
  }
}

enum SingingCharacter { Definite,Indefinite}
class NewWeb extends StatefulWidget {
  const NewWeb({Key? key}) : super(key: key);

  @override
  State<NewWeb> createState() => _NewWebState();
}

class _NewWebState extends State<NewWeb> {
  TextEditingController title=new TextEditingController();
  TextEditingController description=new TextEditingController();
  TextEditingController requesterName=new TextEditingController();
  TextEditingController amnt=new TextEditingController();
  TextEditingController noticeperiod=new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    title = TextEditingController();
    description = TextEditingController();
    requesterName=TextEditingController();
    amnt=TextEditingController();
    noticeperiod=TextEditingController();
   // dropdownvalue=contType;
  }
  @override
  void dispose() {
    super.dispose();
    title.dispose();
    description.dispose();
    requesterName.dispose();
    amnt.dispose();
    noticeperiod.dispose();
   // dropdownvalue.dispose();
  }

  final firestore=FirebaseFirestore.instance.collection('newcontract');

  var contType="xyz";
  var reqstDept="CS";
  var countName="Soumya";
  var countCont="Tina Swift";
  var contEffDate="On Execution";
  var contEndDate="1 April";
  var tax="All Tax Included";
  SingingCharacter? _character = SingingCharacter.Definite;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Image.asset('images/icon_img.png'),
            ),
            SizedBox(
              width: 850,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('images/img_107.png',height: 30,width: 30,)),
            ),
            MaterialButton(
                padding: EdgeInsets.all(8.0),
                textColor: Colors.white,
                splashColor: Colors.greenAccent,
                elevation: 8.0,
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Rectangle.png'),
                        fit: BoxFit.cover,),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Text('Log Out'),
                    )),
                onPressed: () {
                  logout(context);
                }
            ),
          ],
        ),

        Stack(
          children: [Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 100,
              width: 1300,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: <Color>[Color(0xFFF859A8),Color(0xFFED7826), ]),
              ),
            ),
          ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 40),
              child: Text('New Contract',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'
              ),),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 40,left: 1000),
             child: Row(
               children: [
                 MaterialButton(
                     padding: EdgeInsets.all(8.0),
                     textColor: Colors.white,
                     splashColor: Colors.greenAccent,
                     elevation: 8.0,
                     child: Container(
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('images/Rectangle_w.png'),
                             // fit: BoxFit.cover,
                           ),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(
                               vertical: 10, horizontal: 50),
                           child: Text('Cancel'),
                         )),
                     onPressed: () {
                       //Navigator.pushNamed(context, '/signup');
                     }
                 ),

                 SizedBox(
                   width:1,
                 ),

                 MaterialButton(
                   padding: EdgeInsets.all(8.0),
                   //textColor: Colors.black,
                   splashColor: Colors.greenAccent,
                   elevation: 8.0,
                   child: Container(
                     height: 40,
                       width: 140,
                       color: Colors.white,

                       child: Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                         child: Text('Save and Continue'),
                       )),
                   onPressed: (){
                       FocusScope.of(context).unfocus();
                          if(_formKey.currentState!.validate()){
                         String id=DateTime.now().millisecondsSinceEpoch.toString();
                            firestore.doc().set({
                              'contType':contType,
                           'title' : title.text.toString(),
                            'description' : description.text.toString(),
                              'requesterName': requesterName.text.toString(),
                              'reqstDept':reqstDept,
                              'countName':countName,
                              'countCont':countCont,
                             // 'contTerm': _character,
                              'contEffDate':contEffDate,
                              'contEndDate':contEndDate,
                              'noticePeriod':noticeperiod.text.toString(),
                              'Amount':amnt.text.toString(),
                              'Tax':tax,
                               'id':id,

                             }).then((value) {

                            }).onError((error, stackTrace) {


                       });}
                   },
                 ),

               ],
             ),
           )
    ],
        ),
        Stack(
            children: [
              Image.asset('images/img_127.png'),
              
              Padding(
                padding: const EdgeInsets.only(top: 70,left: 90),
                child: Text('Basic Details',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          color: Color(0xFF524C4C)
                      ),),),
                    Padding(
                      padding: const EdgeInsets.only(top: 110,left: 90),
                      child: Container(
                        height: 1,
                        width: 1200,
                        color: Color(0xFF524C4C),
                      ),
                    ),


              //form

              Padding(
                padding: const EdgeInsets.only(top: 150,left: 90),
                child: Form(
                  key: _formKey,
                    child: Column(
                      children: [
                        Stack(
                          children: [

                            Text('Contract Type',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                color: Color(0xFF524C4C),
                              fontWeight: FontWeight.bold
                            ),
                            ),

                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: SizedBox(
                                  height: 50,
                                  width: 400,
                                  child:
                                  DropdownButtonFormField(

                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(

                                          ),
                                          hintText: 'Select '
                                      ),
                                      // hint: Text('Select'),
                                      value: contType,
                                      items: [
                                        DropdownMenuItem(child: Text('xyz'),value: "xyz",),
                                        DropdownMenuItem(child: Text('rwh'),value: "rwh",),
                                        DropdownMenuItem(child: Text('dfgb'),value: "dfgb",),
                                      ],

                                      onChanged: ( v){
                                        contType=v!;
                                      }),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 0,left: 450),
                                child: Text('Title',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      color: Color(0xFF524C4C),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 30,left: 450),
                                child: Container(
                                  height: 50.0,
                                  width: 400.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: new Border.all(
                                      color: Color(0xFF908A8A),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: TextField(
                                    controller: title,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'E-Commerce Vendor Agreement',
                                      //prefixIcon: Icon(Icons.mail_outline),
                                    ),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100,left: 0),
                              child: Text('Description(Optional)',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 130,left: 0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 100.0,
                                  width: 1000.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: new Border.all(
                                      color: Color(0xFF908A8A),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: TextField(
                                    controller: description,
                                    decoration: InputDecoration(
                                        border: InputBorder.none
                                      //hintText: 'Description(Optional)',
                                      //prefixIcon: Icon(Icons.mail_outline),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 250,left: 0),
                              child: Text('Requester Name(Optional)',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 280,left: 0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 50.0,
                                  width: 400.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: new Border.all(
                                      color: Color(0xFF908A8A),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: TextField(
                                    controller: requesterName,
                                    decoration: InputDecoration(
                                        border: InputBorder.none
                                      //hintText: 'Description(Optional)',
                                      //prefixIcon: Icon(Icons.mail_outline),
                                    ),

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 250,left: 500),
                              child: Text('Requester Department (Optional)',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 280,left: 500),
                              child: SizedBox(
                                height: 50,
                                width: 400,
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(

                                        ),
                                        hintText: 'Select '
                                    ),
                                    // hint: Text('Select'),
                                    value: reqstDept,
                                    items: [
                                      DropdownMenuItem(child: Text('CS'),value: "CS",),
                                      DropdownMenuItem(child: Text('EC'),value: "EC",),
                                      DropdownMenuItem(child: Text('Science'),value: "Science",),
                                    ],

                                    onChanged: (v){}),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 360,left: 0),
                              child: Text('Counterparty Name',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 390,left: 0),
                              child: SizedBox(
                                height: 50,
                                width: 400,
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(

                                        ),
                                        hintText: 'Select '
                                    ),
                                    // hint: Text('Select'),
                                    value: countName,
                                    items: [
                                      DropdownMenuItem(child: Text('Soumya'),value: "Soumya"),
                                      DropdownMenuItem(child: Text('Ram'),value: "Ram",),
                                      DropdownMenuItem(child: Text('Avni'),value: "Avni",),
                                    ],

                                    onChanged: (v){}),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 360,left: 500),
                              child: Text('Counterparty Primary Contact',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 390,left: 500),
                              child: SizedBox(
                                height: 50,
                                width: 400,
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(

                                        ),
                                        hintText: 'Select '
                                    ),
                                    // hint: Text('Select'),
                                    value: countCont,
                                    items: [
                                      DropdownMenuItem(child: Text('Tina Swift'),value: "Tina Swift",),
                                      DropdownMenuItem(child: Text('Tina'),value: "Tina",),
                                      DropdownMenuItem(child: Text('Swift'),value: "Swift",),
                                    ],

                                    onChanged: (v){}),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 460,left: 10),
                              child: Text('Contract Term',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 480,left: 20),
                            child: RadioListTile<SingingCharacter>(
                              title: Text('Definite'),
                                value: SingingCharacter.Definite,
                                groupValue: _character,
                                onChanged: (SingingCharacter? value){
                                  setState(() {
                                    _character=value;
                                  });
                                }),
                          ),
                            Padding(
                              padding: const EdgeInsets.only(top: 480,left: 150),
                              child: RadioListTile<SingingCharacter>(
                                  title: Text('Indefinite'),
                                  value: SingingCharacter.Indefinite,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value){
                                    setState(() {
                                      _character=value;
                                    });
                                  }),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 570,left: 0),
                              child: Text('Contract Effective Date',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 600,left: 0),
                              child: SizedBox(
                                height: 50,
                                width: 400,
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(

                                        ),
                                        hintText: 'Select '
                                    ),
                                    // hint: Text('Select'),
                                    value: contEffDate,
                                    items: [
                                      DropdownMenuItem(child: Text('On Execution'),value: "On Execution",),
                                      DropdownMenuItem(child: Text('Executing'),value: "Executing",),
                                      DropdownMenuItem(child: Text('dfgb'),value: "2",),
                                    ],

                                    onChanged: (v){}),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 570,left: 500),
                              child: Text('Contract End Date',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 600,left: 500),
                              child: SizedBox(
                                height: 50,
                                width: 400,
                                child: DropdownButtonFormField(
                                  hint: Text('Select'),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(

                                        ),
                                        hintText: 'Select '
                                    ),
                                    // hint: Text('Select'),
                                    value: contEndDate,
                                    items: [
                                      DropdownMenuItem(child: Text('Select'),value: "1 April",),
                                      DropdownMenuItem(child: Text('15 April'),value: "15 April",),
                                      DropdownMenuItem(child: Text('5 May'),value: "5 May",),
                                    ],

                                    onChanged: (v){}),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 660,left: 0),
                              child: Text('Termination Notice Period (Optional)',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 690,left: 0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 50.0,
                                  width: 400.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: new Border.all(
                                      color: Color(0xFF908A8A),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: TextField(
                                    controller: noticeperiod,
                                    decoration: InputDecoration(
                                        border: InputBorder.none
                                      //hintText: 'Description(Optional)',
                                      //prefixIcon: Icon(Icons.mail_outline),
                                    ),

                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 770,left: 0),
                              child: Text('Financial Details (Optional)',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20,
                                    color: Color(0xFFED7826),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 800,left: 0),
                              child: Container(
                                height: 1,
                                width: 1200,
                                color: Color(0xFF524C4C),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 840,left: 0),
                              child: Text('Amount to Recieve',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 870,left: 0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 50.0,
                                  width: 400.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: new Border.all(
                                      color: Color(0xFF908A8A),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: TextField(
                                    controller: amnt,
                                    decoration: InputDecoration(
                                        border: InputBorder.none
                                      //hintText: 'Description(Optional)',
                                      //prefixIcon: Icon(Icons.mail_outline),
                                    ),

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 840,left: 500),
                              child: Text('Tax',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    color: Color(0xFF524C4C),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 870,left: 500),
                              child: SizedBox(
                                height: 50,
                                width: 400,
                                child: DropdownButtonFormField(
                                    hint: Text('Select'),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(

                                        ),
                                        hintText: 'Select '
                                    ),
                                    // hint: Text('Select'),
                                    value: tax,
                                    items: [
                                      DropdownMenuItem(child: Text('All Tax Included'),value: "All Tax Included",),

                                    ],

                                    onChanged: (v){}),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 950,left: 0),
                              child: Container(
                                height: 1,
                                width: 1200,
                                color: Color(0xFF524C4C),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1000),
                              child: Row(
                                children: [
                                  MaterialButton(
                                      padding: EdgeInsets.all(8.0),
                                      textColor: Colors.black,
                                      splashColor: Colors.greenAccent,
                                      elevation: 8.0,
                                      child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 50),
                                            child: Text('Cancel'),
                                          )),
                                      onPressed: () {
                                        //Navigator.pushNamed(context, '/signup');
                                      }
                                  ),

                                  SizedBox(
                                    width:10,
                                  ),

                                  MaterialButton(
                                    padding: EdgeInsets.all(8.0),
                                    textColor: Colors.white,
                                    splashColor: Colors.greenAccent,
                                    elevation: 8.0,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('images/Rectangle.png'),
                                            fit: BoxFit.cover,),
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                          child: Text('Save and Continue'),
                                        )),
                                    onPressed: (){},
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),


                      ],
                    )

                ),
              )




            ],),
        /*Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field is required';
                  }
                  if (value.contains(",")) {
                    return 'Use of commas not allowed';
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field is required';
                  }
                  if (value.contains(",")) {
                    return 'Use of commas not allowed';
                  }
                  if(int.tryParse(value)!<=0 || int.tryParse(value)== null){
                    return 'Illegal age value provided';
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.maxFinite,
                child: TextButton.icon(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if(_formKey.currentState!.validate()){
                      String id=DateTime.now().millisecondsSinceEpoch.toString();
                      firestore.doc().set({
                        'name' : _nameController.text.toString(),
                        'age' : _ageController.text.toString(),
                        'id':id
                      }).then((value) {
                        
                      }).onError((error, stackTrace) {


                      });
                    }
                   // addData();
                    //else TODO: add method to save data into csv
                  },
                  icon: Icon(Icons.save),
                  label: Text('SAVE'),
                ),
              ),
            ],
          ),
        ),*/
      ],
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()));
  }

  addData() async {
    String csvString = "${title.text},${description.text}";
    print(csvString);
    bool done = await addDataToCSV(csvString);
    SnackBar snackBar;
    if (!done) {
      snackBar = SnackBar(
        content: Text('Unable to write to file'),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
      );
      Fluttertoast.showToast(msg: 'Unable to write to file');
    } else {
      snackBar = SnackBar(
        content: Text('Data written to file'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      );
      Fluttertoast.showToast(msg: 'Data written to file');
    }
    //_scaffoldKey.currentState.showSnackBar(snackBar);
  }
}





class NewMob extends StatefulWidget {
  const NewMob({Key? key}) : super(key: key);

  @override
  State<NewMob> createState() => _NewMobState();
}

class _NewMobState extends State<NewMob> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}







class MediumChild extends StatefulWidget {
  const MediumChild({Key? key}) : super(key: key);

  @override
  State<MediumChild> createState() => _MediumChildState();
}

class _MediumChildState extends State<MediumChild> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



