import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_page/HomePage.dart';
import 'package:home_page/Login.dart';
import 'package:home_page/SideButtons.dart';

import '../ContractsHome.dart';
import '../NewContract.dart';

class MenuHomeDrawer extends StatelessWidget {
  const MenuHomeDrawer({
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  'DASHBOARD',
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContHome()));
                },
                child: Text(
                  'CONTRACTS',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),

              /*ExpansionTile(
                title: Text('CONTRACT',
                  style: TextStyle(color: Colors.black, fontSize: 14),),
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
              ),*/
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
                  'ACTIONING',
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
                  'CONTRACTING PARTIES',
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
                  'REPORTS',
                  style: TextStyle(color: Colors.black, fontSize: 14),
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
                  'ADMIN PANEL',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
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
                      child: Text('Log Out'),
                    )),
                onPressed: () {
                 logout(context);
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
                      child: Text('Invite User'),
                    )),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> NewCont()));

                },
              ),
             // btn(context),

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
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginMob()));
  }
}