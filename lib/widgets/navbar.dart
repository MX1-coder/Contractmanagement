import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_page/utils/responsiveLayout.dart';
import '../SideButtons.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  // var currentPage=DrawerSections.Home;
  @override
  Widget build(BuildContext context) {
    var container;
    final navlinks = [
      "HOME",
      'CONTRACT',
      "PRODUCT INFO",
      "DOWNLOADS",
      "CONTACT US"
    ];

    List<Widget> navItem() {
      return navlinks.map((text) {
        return Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(text, style: TextStyle(
              fontFamily: "Montserrat-Bold",
              fontSize: 18,
              color: Colors.black
          ),),
        );
      }).toList();
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/icon_img.png',),
                )
            ),
          ),
          SizedBox(
            width: 155,
          ),
          if(!ResponsiveLayout.isSmallScreen(context))
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...navItem(),
                  SizedBox(
                    width: 100,
                  ),
                  widget(context)
                ] //..add(widget(context)),
            )


            //IconButton(onPressed: (){}, )
            //Image.asset('images/img_106.png', width: 20, height: 20,)

        ],
      ),
    );
  }
}


  Widget DrawerList() {
    final navlinks = [
      "HOME",
      'CONTRACT',
      "PRODUCT INFO",
      "DOWNLOADS",
      "CONTACT US"
    ];

    List<Widget> navItem() {
      return navlinks.map((text) {
        return Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(text, style: TextStyle(
              fontFamily: "Montserrat-Bold",
              fontSize: 18,
              color: Colors.black
          ),),
        );
      }).toList();
    }
    return Container(
      child: Column(
        children: [
          ...navItem()
        ],
      ),
    );
  }





