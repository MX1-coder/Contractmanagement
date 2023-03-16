import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:home_page/UserModal.dart';
import 'utils/responsiveLayout.dart';
import 'Login.dart';
import 'widgets/top_bar_cotents.dart';
import 'widgets/HomeAppBar.dart';
import 'widgets/HomeDrawer.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
        child: HomeBarContents(),
      ),
      drawer: MenuHomeDrawer(),


     body: Container(
       color: Colors.white,
       child: SingleChildScrollView(
         child: Column(
           children: [
                    Body()
           ],
         ),
       ),
     ),


    );
  }

}




class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: HomeWeb(),
      mediumScreen: MediumChild(),
      smallScreen: HomeMob(),
    );
  }
}


class HomeWeb extends StatefulWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {

  String dropdownvalue = 'This Month';

  // List of items in our dropdown menu
  var items = [
    'This Month',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  late CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }
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
        /*Container(
          height: 5,

          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Color(0xFFF859A8),Color(0xFFED7826), ]),
          ),
    ),*/

        Stack(
          children: [
            Image.asset('images/img_112.png'),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 30),
              child: Image.asset('images/img_113.png',width: 900,height: 175,),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45,left: 100),
                  child: Text('Contracts By Status',
                    style: TextStyle(
                        color: Color(0xFF524C4C),
                        fontFamily: 'Montserrat',
                        fontSize: 14
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      borderRadius: BorderRadius.circular(0),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat'
                          ),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100,left: 120),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[50],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Draft',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130,left: 270),
              child: Image.asset('images/img_114.png',height: 10,width: 10,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100,left: 290),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[100],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Apprived',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130,left: 440),
              child: Image.asset('images/img_114.png',height: 10,width: 10,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100,left: 460),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Negotiated',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130,left: 610),
              child: Image.asset('images/img_114.png',height: 10,width: 10,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100,left: 630),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Signed',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

           Padding(
             padding: const EdgeInsets.only(left: 1000,top: 30),
             child: SizedBox(
               height: 220,
               width: 220,
               child:  SfCalendar(
                 view: CalendarView.month,
                 showNavigationArrow: true,
               ),

             ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 200,left: 30),
              child: Image.asset('images/img_113.png',width: 900,height: 175,),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 220,left: 100),
                  child: Text('Pending Contracts',
                    style: TextStyle(
                        color: Color(0xFF524C4C),
                        fontFamily: 'Montserrat',
                        fontSize: 14
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      borderRadius: BorderRadius.circular(0),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280,left: 100),
              child: Image.asset('images/img_115.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280,left: 135),
              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Approval Pending',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 280,left: 260),
              child: Image.asset('images/img_116.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280,left: 305),
              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Negotiation Pending',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 280,left: 450),
              child: Image.asset('images/img_117.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280,left: 495),
              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Sign Pending',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 280,left: 630),
              child: Image.asset('images/img_119.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280,left: 675),
              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Nearing Renewal',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 400,left: 30),
                  child: Image.asset('images/img_118.png',width: 450,height: 175,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 470,left: 30),
                  child: Image.asset('images/img_120.png',width: 450,height: 39),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 435,left: 80),
                  child: Text('Approval(1)',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 435,left: 380),
                  child: Text('View All',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 480,left: 80),
                  child: Text('Contract',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 480,left: 300),
                  child: Text('Contracting Parties',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 520,left: 80),
                  child: Text('E-Commerce Vendor ',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 535,left: 80),
                  child: Text('Aggrement ',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 525,left: 300),
                  child: Text('FOM Tech',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ],
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 390,left: 500),
                  child: Image.asset('images/img_121.png',width: 400,height: 231,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 470,left: 515),
                  child: Image.asset('images/img_120.png',width: 370,height: 39),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 440,left: 530),
                  child: Text('Pending Obligations (3)',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 440,left: 800),
                  child: Text('View All',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 480,left: 530),
                  child: Text('TITLE',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 480,left: 750),
                  child: Text('DUE DATE',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 520,left: 530),
                  child: Text('Product Updates Demo',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Color(0XFFED7826),
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 520,left: 750),
                  child: Text('08 Sep 2020',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 560,left: 530),
                  child: Text('Collect Payment',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Color(0XFFED7826),
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 560,left: 750),
                  child: Text('08 Sep 2020',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()));
  }
}



class HomeMob extends StatefulWidget {
  const HomeMob({Key? key}) : super(key: key);

  @override
  State<HomeMob> createState() => _HomeMobState();
}

class _HomeMobState extends State<HomeMob> {
  String dropdownvalue = 'This Month';

  // List of items in our dropdown menu
  var items = [
    'This Month',
    'Item 2',
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
             padding: const EdgeInsets.all(10),
             child: Image.asset('images/icon_img.png',),
           ),
           SizedBox(
             width: 108,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Align(
                 alignment: Alignment.topRight,
                 child: Image.asset('images/img_107.png',height: 30,width: 30,)),
           ),
         ],
       ),

        Stack(
          children: [
            //Image.asset('images/img_112.png',height: 1000,),
            Card(
              child: Container(
                width: 400,
                height: 300,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Text('Contracts By Status',
                    style: TextStyle(
                        color: Color(0xFF524C4C),
                        fontFamily: 'Montserrat',
                        fontSize: 14
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      borderRadius: BorderRadius.circular(0),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 30),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[50],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Draft',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110,left: 200),
              child: Image.asset('images/img_114.png',height: 10,width: 10,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80,left: 230),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[100],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Apprived',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 190,left: 30),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Negotiated',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220,left: 200),
              child: Image.asset('images/img_114.png',height: 10,width: 10,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 190,left: 230),
              child: Container(
                height: 70,
                width: 140,
                color: Colors.deepOrange[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Signed',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                        Text('0',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 320),
              child: Center(
                child: SizedBox(
                  height: 220,
                  width: 220,
                  child:  SfCalendar(
                    view: CalendarView.month,
                    showNavigationArrow: true,
                  ),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 580),
              child: Card(
                child: Container(
                  width: 400,
                  height: 300,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 600,left: 15),
                  child: Text('Pending Contracts',
                    style: TextStyle(
                        color: Color(0xFF524C4C),
                        fontFamily: 'Montserrat',
                        fontSize: 14
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 600),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      borderRadius: BorderRadius.circular(0),


                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 660,left: 25),
              child: Image.asset('images/img_115.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 660,left: 80),
              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Approval Pending',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 660,left: 250),
              child: Image.asset('images/img_116.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 660,left: 310),

              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Negotiation Pending',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 730,left: 25),
              child: Image.asset('images/img_117.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730,left: 80),
              child: Column(
                children: [
                  Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Sign Pending',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 730,left: 250),
              child: Image.asset('images/img_119.png',width: 40,height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730,left: 310),
              child: Column(
                children: [
                  Text('0',
                   // textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                  Text('Nearing Renewal',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 820),
                  child: Center(
                    child: Card(
                      child: Container(
                        width: 400,
                        height: 150,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 860,),
                    child: Image.asset('images/img_120.png',width: 440,height: 39),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 820,left: 30),
                  child: Text('Approval(1)',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 820,left: 300),
                  child: Text('View All',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 870,left: 50),
                  child: Text('Contract',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 870,left: 230),
                  child: Text('Contracting Parties',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 910,left: 50),
                  child: Text('E-Commerce Vendor ',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 930,left: 50),
                  child: Text('Aggrement ',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 920,left: 230),
                  child: Text('FOM Tech',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ],
            ),


            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 980),
                  child: Center(
                    child: Card(
                      child: Container(
                        width: 400,
                        height: 200,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1030,),
                    child: Image.asset('images/img_120.png',width: 450,height: 39),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 1000,left: 30),
                  child: Text('Pending Obligations (3)',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1000,left: 300),
                  child: Text('View All',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 1040,left: 50),
                  child: Text('TITLE',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1040,left: 230),
                  child: Text('DUE DATE',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 1090,left: 40),
                  child: Text('Product Updates Demo',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Color(0XFFED7826),
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1090,left: 230),
                  child: Text('08 Sep 2020',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 1120,left: 40),
                  child: Text('Collect Payment',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Color(0XFFED7826),
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1120,left: 230),
                  child: Text('08 Sep 2020',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ],
            )


          ],
        )
      ],
    );
  }
}

