import 'package:flutter/material.dart';
import 'constants.dart';
import 'DropDownFiles.dart';
import 'SideButtons.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/top_bar_cotents.dart';
import 'widgets/drawer.dart';


class BenefitsBody extends StatelessWidget {
  const BenefitsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Benefits(),
      mediumScreen: MediumChild(),
      smallScreen: BenefitsMob(),
    );
  }
}

class MediumChild extends StatelessWidget {
  const MediumChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}




class Benefits extends StatefulWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  State<Benefits> createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
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
                              ]
                          )
                      )
                  ),
                  Stack(
                      children:[
                        Image.asset('images/img_62.png'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 230,horizontal: 120),
                          child: Align(
                              alignment: Alignment.center,
                              child: Image.asset('images/img_63.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 222,horizontal: 135),
                          child: Image.asset('images/img_78.png',height: 550,width: 550,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 160,right: 380),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/img_79.png',height: 260,width: 280,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 180,right: 280),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/img_66.png',height: 350,width: 380,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 280,right: 250),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/img_80.png',height: 370,width: 415,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 395,right: 250),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/img_80.png',height: 370,width: 415,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 650,right: 500),
                          child: Align(
                            alignment:Alignment.topRight,
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

                        Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 740,),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('images/Rectangle_80.png',width: 600,height: 300,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 800,left: 500),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('images/Rectangle_82.png',width: 170,height: 170,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 850,left: 560),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('images/img_81.png',width: 70,height: 70,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 850,left: 200),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Register',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),)
                                ),),
                            ]
                        ),
                        Stack(
                            children:[ Padding(
                              padding: const EdgeInsets.only(top: 740,),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset('images/Rectangle_80.png',width: 600,height: 300,)),
                            ),
                              Padding(
                                padding: const EdgeInsets.only(top: 800,right: 500),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset('images/Rectangle_82.png',width: 170,height: 170,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 850,right: 550),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset('images/img_82.png',width: 70,height: 70,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 850,right: 200),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Manage',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),)
                                ),),
                            ]
                        ),
                        Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 950,),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('images/Rectangle_80.png',width: 600,height: 300,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1000,left: 500),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('images/Rectangle_82.png',width: 170,height: 170,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1050,left: 560),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('images/img_83.png',width: 70,height: 70,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1070,left: 200),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Inform',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),)
                                ),),
                            ]
                        ),
                        Stack(
                            children:[ Padding(
                              padding: const EdgeInsets.only(top: 950,),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset('images/Rectangle_80.png',width: 600,height: 300,)),
                            ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1000,right: 500),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset('images/Rectangle_82.png',width: 170,height: 170,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1050,right: 550),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Image.asset('images/img_84.png',width: 70,height: 70,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 1070,right: 220),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Report',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),)
                                ),),
                            ]
                        ),


                        //cards
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 1300,left: 130),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1185,left: 160),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1400,left: 220),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 1430,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 1300,left: 530),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1185,left: 560),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1400,left: 620),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 1430,left: 650),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 1300,left: 930),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1185,left: 960),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1400,left: 1020),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 1430,left: 1050),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),

                        //2ndrow

                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 1800,left: 130),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1685,left: 160),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1900,left: 220),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 1930,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 1800,left: 530),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1685,left: 560),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1900,left: 620),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 1930,left: 650),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 1800,left: 930),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 1685,left: 960),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1900,left: 1020),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 1930,left: 1050),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),

                        //3rdrow
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 2300,left: 130),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2185,left: 160),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2400,left: 220),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2430,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 2300,left: 530),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2185,left: 560),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2400,left: 620),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2430,left: 650),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 2300,left: 930),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2185,left: 960),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2400,left: 1020),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2430,left: 1050),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),

                        //4throw
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 2800,left: 130),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2685,left: 160),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2900,left: 220),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2930,left: 250),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 2800,left: 530),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2685,left: 560),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2900,left: 620),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2930,left: 650),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 2800,left: 930),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2685,left: 960),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2900,left: 1020),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2930,left: 1050),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),

                        //5throw
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 3300,left: 330),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 3185,left: 360),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3400,left: 420),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 3430,left: 450),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),
                        Stack(
                          children:[ Padding(
                            padding: const EdgeInsets.only(top: 3300,left: 730),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Card(
                                color: Colors.white,
                                child: Container(
                                  width: 300,height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 120),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 3185,left: 760),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_86.png',width: 250,height: 250,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3400,left: 720),
                              child: Align(
                                alignment:Alignment.topLeft,
                                child: Text('Agreements',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                  ),),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 3430,left: 750),
                              child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Image.asset('images/img_72.png',width: 50,)),
                            ),
                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 3700),
                          child: Align(
                              alignment:Alignment.center,
                              child: Image.asset('images/img_74.png',height: 250,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3580,left: 200),
                          child: Align(
                              alignment:Alignment.topLeft,
                              child: Image.asset('images/img_75.png',height: 500,width: 500,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3800,right: 50),
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
                          padding: const EdgeInsets.only(top: 3920,),
                          child: Align(
                              alignment:Alignment.center,
                              child: Image.asset('images/img_76.png',)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3900,),
                          child: Align(
                              alignment:Alignment.center,
                              child: Image.asset('images/img_77.png',height: 400,width: 600,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4200,),
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
                          padding: const EdgeInsets.only(top: 3650.5),
                          child: contact(),
                        )





                      ]
                  ),
                ]
            )
        )
    );
  }
}



class BenefitsMob extends StatefulWidget {
  const BenefitsMob({Key? key}) : super(key: key);

  @override
  State<BenefitsMob> createState() => _BenefitsMobState();
}

class _BenefitsMobState extends State<BenefitsMob> {
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
                        child: Image.asset('images/img_79.png',width: 200,height: 200,)),
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
                        child: Image.asset('images/img_80.png',width: 350,height: 350,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220,left: 80),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_80.png',width: 350,height: 350,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 450,left: 80),
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


                  Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 500,),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/Rectangle_80.png',width: 300,height:300)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 590,left: 250),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/Rectangle_82.png',width: 120,height: 120,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 620,left: 285),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/img_81.png',width: 50,height: 50,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 630,left: 70),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('Register',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),)
                          ),),
                      ]
                  ),
                  Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 600,),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/Rectangle_80.png',width: 300,height:300)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 690,right: 250),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/Rectangle_82.png',width: 120,height: 120,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 720,right: 285),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/img_82.png',width: 50,height: 50,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 730,right: 70),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text('Manage',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),)
                          ),),
                      ]
                  ),
                  Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 700,),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/Rectangle_80.png',width: 300,height:300)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 790,left: 250),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/Rectangle_82.png',width: 120,height: 120,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 820,left: 285),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset('images/img_83.png',width: 50,height: 50,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 830,left: 70),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('Inform',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),)
                          ),),
                      ]
                  ),
                  Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 800,),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/Rectangle_80.png',width: 300,height:300)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 890,right: 250),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/Rectangle_82.png',width: 120,height: 120,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 920,right: 285),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('images/img_84.png',width: 50,height: 50,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 930,right: 70),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text('Report',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),)
                          ),),
                      ]
                  ),



                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 700,
                    color: Colors.white,

                  ),


                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0,),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Stack(
                              children:[ Padding(
                                padding: const EdgeInsets.only(top: 50,left: 75),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    color: Colors.white,
                                    child: Container(
                                      width: 300,height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 120),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 130),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_86.png',width: 170,height: 170,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140,left:165),
                                  child: Align(
                                    alignment:Alignment.center,
                                    child: Text('Agreements',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                      ),),
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 170,left: 185),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_72.png',width: 50,)),
                                ),
                              ],
                            ),
                            Stack(
                              children:[ Padding(
                                padding: const EdgeInsets.only(top: 50,left: 75),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    color: Colors.white,
                                    child: Container(
                                      width: 300,height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 120),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 130),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_86.png',width: 170,height: 170,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140,left:165),
                                  child: Align(
                                    alignment:Alignment.center,
                                    child: Text('Agreements',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                      ),),
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 170,left: 185),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_72.png',width: 50,)),
                                ),
                              ],
                            ),
                            Stack(
                              children:[ Padding(
                                padding: const EdgeInsets.only(top: 50,left: 75),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    color: Colors.white,
                                    child: Container(
                                      width: 300,height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 120),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 130),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_86.png',width: 170,height: 170,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140,left:165),
                                  child: Align(
                                    alignment:Alignment.center,
                                    child: Text('Agreements',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                      ),),
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 170,left: 185),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_72.png',width: 50,)),
                                ),
                              ],
                            ),
                            Stack(
                              children:[ Padding(
                                padding: const EdgeInsets.only(top: 50,left: 75),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    color: Colors.white,
                                    child: Container(
                                      width: 300,height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 120),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 130),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_86.png',width: 170,height: 170,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140,left:165),
                                  child: Align(
                                    alignment:Alignment.center,
                                    child: Text('Agreements',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                      ),),
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 170,left: 185),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_72.png',width: 50,)),
                                ),
                              ],
                            ),
                            Stack(
                              children:[ Padding(
                                padding: const EdgeInsets.only(top: 50,left: 75),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    color: Colors.white,
                                    child: Container(
                                      width: 300,height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 120),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 130),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_86.png',width: 170,height: 170,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140,left:165),
                                  child: Align(
                                    alignment:Alignment.center,
                                    child: Text('Agreements',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                      ),),
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 170,left: 185),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_72.png',width: 50,)),
                                ),
                              ],
                            ),
                            Stack(
                              children:[ Padding(
                                padding: const EdgeInsets.only(top: 50,left: 75),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                    color: Colors.white,
                                    child: Container(
                                      width: 300,height: 400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 120),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Image.asset('images/img_85.png',width: 250,height: 250,)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0,left: 130),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_86.png',width: 170,height: 170,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140,left:165),
                                  child: Align(
                                    alignment:Alignment.center,
                                    child: Text('Agreements',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Montserrat'
                                      ),),
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 170,left: 185),
                                  child: Align(
                                      alignment:Alignment.center,
                                      child: Image.asset('images/img_72.png',width: 50,)),
                                ),
                              ],
                            ),








                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 480),
                    child: Align(
                        alignment:Alignment.center,
                        child: Image.asset('images/img_74.png',)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 390,left: 10),
                    child: Align(
                        alignment:Alignment.topLeft,
                        child: Image.asset('images/img_75.png',height: 250,width: 250,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 490,left: 250),
                    child: Align(
                      alignment: Alignment.topLeft,
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