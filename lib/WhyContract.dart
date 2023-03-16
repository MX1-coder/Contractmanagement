import 'package:flutter/material.dart';
import 'main.dart';
import 'constants.dart';
import 'DropDownFiles.dart';
import 'WhyConAdv.dart';
import 'utils/responsiveLayout.dart';
import 'SideButtons.dart';
import 'widgets/drawer.dart';
import 'widgets/top_bar_cotents.dart';


class WhyBody extends StatelessWidget {
  const WhyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: WhyContract(),
      mediumScreen: MediumChild(),
      smallScreen: WhyContractMob(),
    );
  }
}


class WhyContract extends StatefulWidget {
  const WhyContract({Key? key}) : super(key: key);

  @override
  State<WhyContract> createState() => _WhyContractState();
}

class _WhyContractState extends State<WhyContract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/img_8.png',),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 60),
                              child: Row(
                                children: <Widget>[
                                  Image.asset('images/icon_img.png',width: 236,height: 90,),
                                  SizedBox(
                                    width: 200,
                                  ),
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/');
                                      },
                                      child: Text('HOME',style: ktextstyle,)),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  DropdownButtonExample(),

                                  /* TextButton(
                                onPressed: (){
                                 DropdownButtonExample();
                                },
                                child: Text('CONTRACT',style: ktextstyle,)),*/
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('PRODUCT INFO',style: ktextstyle,),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('DOWNLOADS',style: ktextstyle,),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text('CONTACT',style: ktextstyle,),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  widget(context),

                                ],
                              ),
                            ),
                          ]
                      ),
                        //widget3(),
                        //about(),
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Image.asset('images/img_62.png'),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 400,horizontal: 200),
                              child: Image.asset('images/img_63.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 390,horizontal: 215),
                              child: Align(
                                  alignment:Alignment.centerRight,
                                  child: Image.asset('images/img_64.png',width: 470,height: 470,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 370,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_65.png',width: 200,height: 200,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 345,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_66.png',width: 350,height: 350,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 410,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_67.png',width: 410,height: 410,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 500,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_67.png',width: 410,height: 410,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 765,left: 250),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: MaterialButton(
                                  padding: EdgeInsets.all(8.0),
                                  textColor: Colors.white,
                                  splashColor: Colors.greenAccent,
                                  elevation: 8.0,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('images/Rect.png'),
                                          fit: BoxFit.cover, ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 30),
                                        child: Text('Contact Us',style: ktextstyle,),
                                      )),
                                  onPressed: (){},
                                ),
                              ),
                            ),
                            adv()



                          ],
                        ),

                      ],
                    ),
                  )
              )
            ]
        ),
      ),
    );
  }
}





class WhyContractMob extends StatefulWidget {
  const WhyContractMob({Key? key}) : super(key: key);

  @override
  State<WhyContractMob> createState() => _WhyContractMobState();
}

class _WhyContractMobState extends State<WhyContractMob> {
  @override
  Widget build(BuildContext context) {
    Image appLogo = new Image(
        image: new ExactAssetImage("images/icon_img.png"),
        height: 150.0,
        width: 150.0,
        alignment: FractionalOffset.center);
    var screensize=MediaQuery.of(context).size;
    final current=MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: ResponsiveLayout.isSmallScreen(context)?
      AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFFFAD6BE),
        elevation: 0,
        centerTitle:true,
        title: appLogo,

      ):
      PreferredSize(
        preferredSize:Size(screensize.width,70) ,
        child: TopBarContents(),
      ),
      drawer: MenuDrawer(),
      body:Container(
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img_8.png'),
            fit: BoxFit.cover,
          ),
        ),

        // backgroundColor: Colors.black,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('images/img_62.png'),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 120),
                   child: Align(
                     alignment: Alignment.center,
                     child: Card(
                       child: Container(
                         height: 400,
                         width: 400,
                       ),
                     ),
                   ),
                 ),

                  Padding(
                    padding: const EdgeInsets.only(top:75,left: 80),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_65.png',width: 200,height: 200,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 80),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_66.png',width: 300,height: 300,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 130,left: 80),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_67.png',width: 350,height: 350,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210,left: 80),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_67.png',width: 350,height: 350,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 430,left: 80),
                    child: Align(
                      alignment:Alignment.topLeft,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.greenAccent,
                        elevation: 8.0,
                        child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Rect.png'),
                                fit: BoxFit.cover, ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 30),
                              child: Text('Contact Us',style: ktextstyle,),
                            )),
                        onPressed: (){},
                      ),
                    ),
                  ),

                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 500,
                    color: Colors.white,
                   child: Padding(
                     padding: const EdgeInsets.only(top:200),
                     child: Align(
                          alignment:Alignment.topRight,
                          child: Image.asset('images/img_68.png',)),
                   ),
                  ),
                  Align(
                      alignment:Alignment.center,
                      child: Image.asset('images/img_69.png',width: 200,height: 100,)),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180,left: 100),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Stack(
                                children:[ Align(
                                  alignment:Alignment.center,
                                  child: Card(
                                    child: Container(
                                      width: 300,
                                      height: 300,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset('images/img_71.png')
                                      ),
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 220,left: 80),
                                    child: Align(
                                        alignment:Alignment.topLeft,
                                        child: Image.asset('images/img_72.png',)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0,left: 100),
                                    child: Align(
                                        alignment:Alignment.center,
                                        child: Image.asset('images/img_73.png',width: 80,height: 80,)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left: 120),
                                    child: Align(
                                      alignment:Alignment.topLeft,
                                      child: Text('01',
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                                        ),),
                                    ),)
                                ]
                            ),

                            Stack(
                                children:[ Align(
                                  alignment:Alignment.center,
                                  child: Card(
                                    child: Container(
                                      width: 300,
                                      height: 300,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset('images/img_71.png')
                                      ),
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 220,left: 80),
                                    child: Align(
                                        alignment:Alignment.topLeft,
                                        child: Image.asset('images/img_72.png',)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0,left: 100),
                                    child: Align(
                                        alignment:Alignment.center,
                                        child: Image.asset('images/img_73.png',width: 80,height: 80,)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left: 120),
                                    child: Align(
                                      alignment:Alignment.topLeft,
                                      child: Text('02',
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                                        ),),
                                    ),)
                                ]
                            ),

                            Stack(
                                children:[ Align(
                                  alignment:Alignment.center,
                                  child: Card(
                                    child: Container(
                                      width: 300,
                                      height: 300,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset('images/img_71.png')
                                      ),
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 220,left: 80),
                                    child: Align(
                                        alignment:Alignment.topLeft,
                                        child: Image.asset('images/img_72.png',)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0,left: 100),
                                    child: Align(
                                        alignment:Alignment.center,
                                        child: Image.asset('images/img_73.png',width: 80,height: 80,)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left: 120),
                                    child: Align(
                                      alignment:Alignment.topLeft,
                                      child: Text('03',
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                                        ),),
                                    ),)
                                ]
                            ),

                            Stack(
                                children:[ Align(
                                  alignment:Alignment.center,
                                  child: Card(
                                    child: Container(
                                      width: 300,
                                      height: 300,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset('images/img_71.png')
                                      ),
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 220,left: 80),
                                    child: Align(
                                        alignment:Alignment.topLeft,
                                        child: Image.asset('images/img_72.png',)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0,left: 100),
                                    child: Align(
                                        alignment:Alignment.center,
                                        child: Image.asset('images/img_73.png',width: 80,height: 80,)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left: 120),
                                    child: Align(
                                      alignment:Alignment.topLeft,
                                      child: Text('04',
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                                        ),),
                                    ),)
                                ]
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 470),
                    child: Align(
                        alignment:Alignment.center,
                        child: Image.asset('images/img_74.png',)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 380,left: 10),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_75.png',height: 250,width: 250,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 480,right: 0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        //textColor: Colors.black,
                        //splashColor: Colors.greenAccent,
                        elevation: 8.0,
                        child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Rectangle_w.png'),
                                // fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                              child: Text('Request Offer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 14
                                ),),
                            )),
                        onPressed: (){},
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 550,),
                    child: Align(
                        alignment:Alignment.center,
                        child: Image.asset('images/img_76.png',)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 480,),
                    child: Align(
                        alignment:Alignment.center,
                        child: Image.asset('images/img_77.png',height: 250,width: 250,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 640,),
                    child: Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        //textColor: Colors.black,
                        //splashColor: Colors.greenAccent,
                        elevation: 8.0,
                        child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Rect_round.png'),
                                // fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 70),
                              child: Text('Request a free of charge demo account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 10
                                ),),
                            )),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220.5),
                    child: contactMob(),
                  )

                ],
              ),



            ],
          ),
        ),

      ),

    );
  }
}