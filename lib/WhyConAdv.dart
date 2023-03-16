import 'package:flutter/material.dart';
import 'constants.dart';
//import 'contact.dart';
import 'SideButtons.dart';
Widget adv(){
  return
    Stack(
      children: [Padding(
        padding: const EdgeInsets.only(top: 850),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Align(
                alignment:Alignment.topRight,
                child: Image.asset('images/img_68.png',)),
          ),
        ),
      ),
        Padding(
          padding: const EdgeInsets.only(top: 750),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_69.png',width: 300,height: 300,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 810),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_70.png',width: 1000,height: 300,)),
        ),

        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1050,left: 100),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1200,left: 140),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1035,left: 190),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1040,left: 195),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('01',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1050,left: 400),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1200,left: 440),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1035,left: 480),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1040,left: 485),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('02',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1050,left: 700),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1200,left: 740),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1035,left: 780),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1040,left: 785),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('03',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1050,left: 1000),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1200,left: 1040),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1035,left: 1080),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1040,left: 1085),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('04',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1300,left: 100),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1450,left: 140),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1285,left: 190),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1290,left: 195),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('05',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1300,left: 400),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1450,left: 440),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1285,left: 480),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1290,left: 485),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('06',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1300,left: 700),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1450,left: 740),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1285,left: 780),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1290,left: 785),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('07',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1300,left: 1000),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1450,left: 1040),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1285,left: 1080),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1290,left: 1085),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('08',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1550,left: 100),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1700,left: 140),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1535,left: 190),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1540,left: 195),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('09',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1550,left: 400),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1700,left: 440),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1535,left: 480),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1540,left: 485),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('10',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1550,left: 700),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1700,left: 740),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1535,left: 780),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1540,left: 785),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('11',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 1550,left: 1000),
            child: Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: Colors.white,
                child: Container(
                  width: 230,height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('images/img_71.png')
                    ),
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 1700,left: 1040),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_72.png',)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1535,left: 1080),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Image.asset('images/img_73.png',width: 50,height: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1540,left: 1085),
              child: Align(
                alignment:Alignment.topLeft,
                child: Text('12',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                  ),),
              ),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1770),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_74.png',height: 250,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1650,left: 200),
          child: Align(
              alignment:Alignment.topLeft,
              child: Image.asset('images/img_75.png',height: 500,width: 500,)),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 1875,right: 80),
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
          padding: const EdgeInsets.only(top: 1984,),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_76.png',)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1984,),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_77.png',height: 400,width: 600,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2320,),
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
          padding: const EdgeInsets.only(top: 1718.5),
         child: contact(),
        )

      ],
    );

}




Widget advMob(){
  return
    Stack(
      children: [Container(
        height: 110,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Align(
              alignment:Alignment.topRight,
              child: Image.asset('images/img_68.png',)),
        ),
      ),
        Padding(
          padding: const EdgeInsets.only(top: 750),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_69.png',width: 300,height: 300,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 810),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_70.png',width: 1000,height: 300,)),
        ),


        SingleChildScrollView(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:[
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1050,left: 100),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1200,left: 140),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1035,left: 190),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1040,left: 195),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('01',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1050,left: 400),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1200,left: 440),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1035,left: 480),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1040,left: 485),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('02',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1050,left: 700),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1200,left: 740),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1035,left: 780),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1040,left: 785),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('03',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1050,left: 1000),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1200,left: 1040),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1035,left: 1080),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1040,left: 1085),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('04',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1300,left: 100),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1450,left: 140),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1285,left: 190),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1290,left: 195),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('05',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1300,left: 400),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1450,left: 440),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1285,left: 480),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1290,left: 485),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('06',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1300,left: 700),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1450,left: 740),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1285,left: 780),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1290,left: 785),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('07',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1300,left: 1000),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1450,left: 1040),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1285,left: 1080),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1290,left: 1085),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('08',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1550,left: 100),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1700,left: 140),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1535,left: 190),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1540,left: 195),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('09',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1550,left: 400),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1700,left: 440),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1535,left: 480),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1540,left: 485),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('10',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1550,left: 700),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1700,left: 740),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1535,left: 780),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1540,left: 785),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('11',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 1550,left: 1000),
              child: Align(
                alignment: Alignment.topLeft,
                child: Card(
                  color: Colors.white,
                  child: Container(
                    width: 230,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('images/img_71.png')
                      ),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 1700,left: 1040),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_72.png',)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1535,left: 1080),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Image.asset('images/img_73.png',width: 50,height: 50,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1540,left: 1085),
                child: Align(
                  alignment:Alignment.topLeft,
                  child: Text('12',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Montserrat'
                    ),),
                ),)
            ],
          ),
  ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1770),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_74.png',height: 250,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1650,left: 200),
          child: Align(
              alignment:Alignment.topLeft,
              child: Image.asset('images/img_75.png',height: 500,width: 500,)),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 1875,right: 80),
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
          padding: const EdgeInsets.only(top: 1984,),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_76.png',)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1984,),
          child: Align(
              alignment:Alignment.center,
              child: Image.asset('images/img_77.png',height: 400,width: 600,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2320,),
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
          padding: const EdgeInsets.only(top: 1718.5),
          child: contactMob(),
        )

      ],
    );

}