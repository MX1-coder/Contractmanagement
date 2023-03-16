import 'package:flutter/material.dart';
import 'package:home_page/NewContract.dart';
import 'package:home_page/NewContractTable.dart';
import 'package:home_page/SideButtons.dart';
import 'package:home_page/DropDownFiles.dart';
import 'package:home_page/main.dart';

import '../ContractsHome.dart';
import '../HomePage.dart';
import '../generated/l10n.dart';

class ContractHomeBarContents extends StatefulWidget {

  ContractHomeBarContents();

  @override
  _ContractHomeBarContentsState createState() => _ContractHomeBarContentsState();
}

class _ContractHomeBarContentsState extends State<ContractHomeBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  var condrp=['Why Contract','Contract Benifits','Cost'];
  var currentItemSelected='Why Contract';
  String dropdownvalue = 'My Contracts';

  // List of items in our dropdown menu
  var items = [
    'My Contract',
    'New Contract',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 150,
      // color: Color(0xFFFAD6BE),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: <Color>[Color(0xFFF859A8),Color(0xFFED7826), ]),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //SizedBox(width: screenSize.width/4,),

            SizedBox(width: screenSize.width / 20),
            DropdownButtonHideUnderline(
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
                    child: Text(items,
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat'
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

            SizedBox(width: screenSize.width / 30),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[0] = true
                      : _isHovering[0] = false;
                });
              },
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'DASHBOARD',
                    style: TextStyle(
                        color: _isHovering[0]
                            ? Colors.white
                            : Colors.white,
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat'

                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[0],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(width: screenSize.width / 30),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[1] = true
                      : _isHovering[1] = false;
                });
              },
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => const ContHome()));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'CONTRACTS',
                    style: TextStyle(
                        color: _isHovering[1]
                            ? Colors.white
                            : Colors.white,
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat'

                    ),
                  ),
                  //DropdownButtonExample(),

                  // SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[1],
                    child: Container(
                      height: 2,
                      width: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

            ),

            SizedBox(width: screenSize.width / 30),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[2] = true
                      : _isHovering[2] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'ACTIONING',
                    style: TextStyle(
                        color: _isHovering[2]
                            ? Colors.white
                            : Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat'

                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[2],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(width: screenSize.width / 30),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[3] = true
                      : _isHovering[3] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'CONTRACTING PARTIES',
                    style: TextStyle(
                        color: _isHovering[3]
                            ? Colors.white
                            : Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat'

                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[3],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(width: screenSize.width / 30),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[4] = true
                      : _isHovering[4] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'REPORTS',
                    style: TextStyle(
                        color: _isHovering[4]
                            ? Colors.white
                            : Colors.white,
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat'

                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[4],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 30),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[5] = true
                      : _isHovering[5] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'ADMIN PANEL',
                    style: TextStyle(
                        color: _isHovering[5]
                            ? Colors.white
                            : Colors.white,
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat'

                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[5],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 18),
            Image.asset('images/img_109.png',height: 30, width: 30,),
            SizedBox(
              width: 10,
            ),
            Image.asset('images/img_110.png',height: 30, width: 30),
            SizedBox(
              width: 10,
            ),

            MaterialButton(
                padding: EdgeInsets.all(8.0),
                textColor: Colors.white,
                splashColor: Colors.greenAccent,
                elevation: 8.0,
                child: Container(
                    color: Colors.white,
                    height: 30,
                    width: 125,
                    /*decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/img_111.png'),
                        fit: BoxFit.cover,),
                    ),*/
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Center(
                        child: Text('New Contract',
                          style: TextStyle(
                              color: Colors.black
                          ),),
                      ),
                    )),
                onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => NewCont()));
                }
            ),

          ],
        ),

      ),

    );
    //);
  }
}
