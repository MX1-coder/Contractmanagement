import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:home_page/UserModal.dart';
import 'NewContractTable.dart';
import 'utils/responsiveLayout.dart';
import 'Login.dart';
import 'widgets/top_bar_cotents.dart';
import 'widgets/HomeAppBar.dart';
import 'widgets/HomeDrawer.dart';
import 'widgets/ContractHomeAppBar.dart';



class ContHome extends StatefulWidget {
  const ContHome({Key? key}) : super(key: key);

  @override
  State<ContHome> createState() => _ContHomeState();
}

class _ContHomeState extends State<ContHome> {

  User? user=FirebaseAuth.instance.currentUser;
  UserModel loggedInUser=UserModel();

  void initState(){
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid).get()
        .then((value) => {
      this.loggedInUser=UserModel.fromMap(value.data()),
      setState(() {})
    });
  }

  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveLayout.isSmallScreen(context)?
      AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          // backgroundColor: Color(0xFFFAD6BE),
          elevation: 0,
          centerTitle:true,
          flexibleSpace:Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Color(0xFFED7826), Color(0xFFF859A8)]),
            ),
          )
        //title: appLogo,

      ):
      PreferredSize(
        preferredSize:Size(screensize.width,70) ,
        child: ContractHomeBarContents(),
      ),
      drawer: MenuHomeDrawer(),


      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
          ContBody()
            ],
          ),
        ),
      ),


    );
  }

}

class ContBody extends StatelessWidget {
  const ContBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: ContWeb(),
      mediumScreen: MediumChild(),
      smallScreen: ContMob(),
    );
  }
}

enum Title{title,title1,cat}

class ContWeb extends StatefulWidget {
  const ContWeb({Key? key}) : super(key: key);

  @override
  State<ContWeb> createState() => _ContWebState();
}

class _ContWebState extends State<ContWeb> {
  Title? _title=Title.title;
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
          children: [
            Image.asset('images/img_122.png'),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
            children: [
              Image.asset('images/img_123.png',width: 3000,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
              Image.asset('images/img_124.png',width: 1600,height: 55.5,),
            ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 50),
              child: Column(
                children: [
                Row(
                  children: [
                    Image.asset('images/img_125.png',width:10,height: 10,),
                    SizedBox(
                      width: 5,
                    ),
                    Text('TITLE',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Image.asset('images/img_125.png',width:10,height: 10,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PSA with FOM Tech',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 40,left: 400),
              child: Column(
                children: [
                  Text('STATUS',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),

                  Text('Negotiated',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    //  fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 610),
              child: Column(
                children: [
                  Text('CONTRACTING PARTIES',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                     // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('Foam Teach',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 900),
              child: Column(
                children: [
                  Text('REPORTS',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                     // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('On Execution',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 1110),
              child: Column(
                children: [
                  Text('ADMIN PANEL',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF524C4C),
                     // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                  Text('20 Dec 2022',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF524C4C),
                    // fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 1280),
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('images/img_126.png',width: 30,height: 30,),
                ],
              ),
            )
          ],

        ),

      ],
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()));
  }
}

class ContMob extends StatefulWidget {
  const ContMob({Key? key}) : super(key: key);

  @override
  State<ContMob> createState() => _ContMobState();
}

class _ContMobState extends State<ContMob> {
  String dropdownvalue = 'My Contracts';

  // List of items in our dropdown menu
  var items = [
    'My Contracts',
    'New Contract',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
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
              width: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('images/img_107.png',height: 30,width: 30,)),
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Color(0xFFF859A8)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                  borderRadius: BorderRadius.circular(0),
                  dropdownColor: Color(0xFFF859A8),


                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(items,
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? value) {
                    setState(() {
                      dropdownvalue = value!;
                      if(dropdownvalue=='New Contract'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ContTable()));
                      }
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [

              Stack(
                children: [
                  //Image.asset('images/img_122.png',),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 0),
                    child: Column(
                      children: [
                        Image.asset('images/img_123.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                        Image.asset('images/img_124.png',height: 64,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 50),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('TITLE',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset('images/img_125.png',width:10,height: 10,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('PSA with FOM Tech',style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color(0xFF524C4C),
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 400),
                    child: Column(
                      children: [
                        Text('STATUS',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: Color(0xFF524C4C),
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),

                        Text('Negotiated',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          //  fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 610),
                    child: Column(
                      children: [
                        Text('CONTRACTING PARTIES',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: Color(0xFF524C4C),
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('Foam Teach',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 900),
                    child: Column(
                      children: [
                        Text('REPORTS',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: Color(0xFF524C4C),
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('On Execution',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 1110),
                    child: Column(
                      children: [
                        Text('ADMIN PANEL',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            color: Color(0xFF524C4C),
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 45,
                        ),
                        Text('20 Dec 2022',style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color(0xFF524C4C),
                          // fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 1280),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 55,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                        SizedBox(
                          height: 35,
                        ),
                        Image.asset('images/img_126.png',width: 30,height: 30,),
                      ],
                    ),
                  )
                ],

              ),
            ],
          ),
        ),

      ],
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()));
  }
}

