import 'package:flutter/material.dart';
import 'package:home_page/SideButtons.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(

          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),

              ExpansionTile(
                title: Text('CONTRACT',
                  style: TextStyle(color: Colors.black, fontSize: 18),),
                children: [
                  ListTile(
                    title: Text('Why Contract'),
                    onTap: (){
                   Navigator.pushNamed(context, '/second');
                    },
                  ),
                  ListTile(
                    title: Text('Contract Benefits'),
                    onTap: (){
                      Navigator.pushNamed(context, '/third');

                    },
                  ),
                  ListTile(
                    title: Text('Costs'),
                    onTap: (){

                    },
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'PRODUCT INFO',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'DOWNLOADS',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Text(
                  'CONTACT',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),

             /* MaterialButton(
                //padding: EdgeInsets.all(8.0),
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
                          vertical: 10, horizontal: 100),
                      child: Text('Login'),
                    )),
                onPressed: () {
                  //Navigator.pushNamed(context, '/signup');
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              MaterialButton(
                //padding: EdgeInsets.all(8.0),
                textColor: Colors.black,
                splashColor: Colors.greenAccent,
                elevation: 8.0,
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Rectangle_43.png'),
                        // fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Text('Free Trial'),
                    )),
                onPressed: (){},
              ),*/
              btn(context),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2023 |Contract',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}