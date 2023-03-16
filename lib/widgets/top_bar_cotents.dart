import 'package:flutter/material.dart';
import 'package:home_page/SideButtons.dart';
import 'package:home_page/DropDownFiles.dart';
import 'package:home_page/languageChange.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';

class TopBarContents extends StatefulWidget {

  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
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

  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'عربي',
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color(0xFFFAD6BE),
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //SizedBox(width: screenSize.width/4,),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/icon_img.png',),
                  )
              ),
            ),
            SizedBox(width: screenSize.width / 25),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[0] = true
                      : _isHovering[0] = false;
                });
              },
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    S.of(context).home,
                    style: TextStyle(
                        color: _isHovering[0]
                            ? Color(0xFFED7826)
                            : Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,

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
                      color: Color(0xFF051441),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(width: screenSize.width / 25),
            InkWell(
              onHover: (value) {
                setState(() {
                  value
                      ? _isHovering[1] = true
                      : _isHovering[1] = false;
                });
              },
              onTap: () {

              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /*Text(
                    'CONTRACT',
                    style: TextStyle(
                      c
                      //fontWeight: FontWeight.bold,
                      fontSize: 16,

                    ),
                  ),*/
                  DropdownButtonExample(),

                 // SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[1],
                    child: Container(
                      height: 2,
                      width: 15,
                      color: Color(0xFF051441),
                    ),
                  )
                ],
              ),

            ),

            SizedBox(width: screenSize.width / 25),
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
                    S.of(context).productinfo,
                    style: TextStyle(
                      color: _isHovering[2]
                          ? Color(0xFFED7826)
                          : Colors.black,
                     // fontWeight: FontWeight.bold,
                      fontSize: 16,

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
                      color: Color(0xFF051441),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(width: screenSize.width / 25),
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
                    S.of(context).downloads,
                    style: TextStyle(
                      color: _isHovering[3]
                          ? Color(0xFFED7826)
                          : Colors.black,
                     // fontWeight: FontWeight.bold,
                      fontSize: 16,

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
                      color: Color(0xFF051441),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(width: screenSize.width / 25),
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
                    S.of(context).contact,
                    style: TextStyle(
                      color: _isHovering[4]
                          ? Color(0xFFED7826)
                          : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 16,

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
                      color: Color(0xFF051441),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: screenSize.width / 25),
         btn(context),
            SizedBox(width: screenSize.width / 25),
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
                    if(dropdownvalue=='English'){
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => ContTable()));
                      context.read<LanguageChangeProvider>().ChangeLocal("en");
                    }
                    if(dropdownvalue=='عربي'){
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => ContTable()));
                      context.read<LanguageChangeProvider>().ChangeLocal("ar");
                    }
                  });
                },
              ),
            ),
          ],
        ),

      ),

    );
    //);
  }
}
