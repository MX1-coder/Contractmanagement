
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as Path;
import 'package:home_page/Sign_up.dart';
import 'generated/l10n.dart';
import 'utils/responsiveLayout.dart';


Widget widget(BuildContext context){
  return Container(
    //height: 100,
    //width: 100,
    child: Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
                children:<Widget>[
                  Icon(Icons.phone_in_talk,weight: 50,),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset('images/line.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children:[
                      Text('Have any Question?',style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Montserrat'
                      ),),
                      SizedBox(
                        width: 50,
                      ),
                      Text('+00 123 456 7890',style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Montserrat'
                      ),),
                    ], ),
                ]
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
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
                            vertical: 10, horizontal: 10),
                        child: Text('Login'),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),

                SizedBox(
                  width:1,
                ),

                MaterialButton(
                  padding: EdgeInsets.all(8.0),
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
                ),

              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget btn(BuildContext context){

  return Row(
    children: [
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
                  vertical: 10, horizontal: 10),
              child: Text(S.of(context).login),
            )),
        onPressed: () {
         Navigator.pushNamed(context, '/signup');
        }
      ),

      SizedBox(
        width:15,
      ),

      MaterialButton(
        padding: EdgeInsets.all(8.0),
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
              child: Text(S.of(context).freetrial),
            )),
        onPressed: (){},
      ),


    ],
  );
}


Widget widget2(BuildContext context){
  return  Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 110,horizontal: 190),
        child: Container(
            alignment: Alignment.centerLeft,
            //  color: Colors.black,
            width: 544,
            height: 410,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage('images/Rectangle_44.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/Line_5.png')),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(S.of(context).ourcomprehensive,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(S.of(context).contract,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(S.of(context).management,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(S.of(context).softwarehelps,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                      SizedBox(
                        height: 20,
                      ),

                      Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white
                          ),
                          child: Text(S.of(context).readmore,style: TextStyle(
                              color: Colors.black
                          ),)),
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
      widget3(),
    ],
  );

}

Widget widgets(){
  return  Padding(
    padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
    child: Container(
        alignment: Alignment.centerLeft,
        //  color: Colors.black,
        width: 544,
        height: 380,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('images/Rectangle_44.png'),
                fit: BoxFit.cover
            )
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('images/Line_5.png')),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Our Comprehensive',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Contract',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Management',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Software',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Helps',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white
                      ),
                      child: Text('Read More',style: TextStyle(
                          color: Colors.black
                      ),)),
                )
              ],
            ),
          ),
        )
    ),
  );

}

Widget widget3(){
  return
    Stack(
      children: [Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 700,
            //height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img_7.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/Why.png',width: 464,height: 49,)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 42),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/We.png',width: 526,height: 58,)),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(180.0),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: 268,
                              height: 320,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/Rectangle_46.png'),
                                    fit: BoxFit.cover
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: [

                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset('images/img_14.png',width: 80,height: 70,)),

                                    SizedBox(
                                      height: 10,
                                    ),

                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Text('Why Contract',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset('images/line_5.png',),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:40 ,
                                    ),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset('images/Full.png')),
                                    SizedBox(
                                      height:20 ,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                                        child: Center(
                                          child: ElevatedButton(onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white
                                              ),
                                              child: Text('More Info',style: TextStyle(
                                                  color: Colors.black
                                              ),)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),

                            Card(
                                child: Container(
                                    width: 268,
                                    height: 320,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('images/Rectangle_48.png'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                          children: [

                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Image.asset('images/img_17.png',width: 80,height: 70,)),

                                            SizedBox(
                                              height: 10,
                                            ),

                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Row(
                                                children: [
                                                  Image.asset('images/What_contract.png',width: 148,height: 29,),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  //Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                  Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height:40 ,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Image.asset('images/E.png')),
                                            SizedBox(
                                              height:20 ,
                                            ),
                                            Align(
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
                                                      child: Text('More Info'),
                                                    )),
                                                onPressed: (){},
                                              ),
                                            ),
                                          ]
                                      ),
                                    )
                                )
                            ),

                            SizedBox(
                              width: 60,
                            ),
                            Card(
                              child: Container(
                                  width: 268,
                                  height: 320,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/Rectangle_48.png'),
                                        fit: BoxFit.cover
                                    ),
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                        children: [

                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Image.asset('images/img_18.png',width: 70,height: 70,)),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Image.asset('images/Cost.png',width: 50,height: 15,),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                //Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height:45 ,
                                          ),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Image.asset('images/Low.png')),
                                          SizedBox(
                                            height:20 ,
                                          ),
                                          Align(
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
                                                    child: Text('More Info'),
                                                  )),
                                              onPressed: (){},
                                            ),
                                          ),
                                        ]
                                    ),
                                  )
                              ),
                            ),
                          ]
                      ),


                    ],
                  ),
                ),
              ),
            ),
            about()
          ],
        ),

      ],

    );

}
/*Widget widget4(){
  return
    Stack(
      children: [Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
           // width: 700,
            //height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img_7.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('images/Why.png',width: 464,height: 49,)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 42),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/We.png',width: 526,height: 58,)),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
        SizedBox(
          height: 10,
        ),
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(180.0),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: 268,
                              height: 320,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/Rectangle_46.png'),
                                    fit: BoxFit.cover
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: [

                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset('images/img_14.png',width: 80,height: 70,)),

                                    SizedBox(
                                      height: 10,
                                    ),

                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Text('Why Contract',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset('images/line_5.png',),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:40 ,
                                    ),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset('images/Full.png')),
                                    SizedBox(
                                      height:20 ,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                                        child: Center(
                                          child: ElevatedButton(onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white
                                              ),
                                              child: Text('More Info',style: TextStyle(
                                                  color: Colors.black
                                              ),)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),

                            Card(
                                child: Container(
                                    width: 268,
                                    height: 320,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('images/Rectangle_48.png'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                          children: [

                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Image.asset('images/img_17.png',width: 80,height: 70,)),

                                            SizedBox(
                                              height: 10,
                                            ),

                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Row(
                                                children: [
                                                  Image.asset('images/What_contract.png',width: 148,height: 29,),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  //Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                  Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height:40 ,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Image.asset('images/E.png')),
                                            SizedBox(
                                              height:20 ,
                                            ),
                                            Align(
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
                                                      child: Text('More Info'),
                                                    )),
                                                onPressed: (){},
                                              ),
                                            ),
                                          ]
                                      ),
                                    )
                                )
                            ),

                            SizedBox(
                              width: 60,
                            ),
                            Card(
                              child: Container(
                                  width: 268,
                                  height: 320,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/Rectangle_48.png'),
                                        fit: BoxFit.cover
                                    ),
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                        children: [

                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Image.asset('images/img_18.png',width: 70,height: 70,)),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Image.asset('images/Cost.png',width: 50,height: 15,),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                //Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height:45 ,
                                          ),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Image.asset('images/Low.png')),
                                          SizedBox(
                                            height:20 ,
                                          ),
                                          Align(
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
                                                    child: Text('More Info'),
                                                  )),
                                              onPressed: (){},
                                            ),
                                          ),
                                        ]
                                    ),
                                  )
                              ),
                            ),
                          ]
                      ),

                      /*  Padding(
                            padding: const EdgeInsets.all(80.0),
                            child: Container(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 1000,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('images/Rectangle54.png'),
                                          fit: BoxFit.cover
                                        )
                                    )
                                ),
                              ),
                            ),
                          )*/
                    ],
                  ),
                ),
              ),
            ),
            //about()
          ],
        ),

      ],

    );


} */

Widget widgetWhy(){
  return Stack(
    children:[ Container(
    color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('images/Why.png',width: 250,height: 70,)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(70.0),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width: 268,
                                  height: 320,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/Rectangle_46.png'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30,left: 30),
                                    child: Column(
                                      children: [

                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset('images/img_14.png',width: 80,height: 70,)),

                                        SizedBox(
                                          height: 10,
                                        ),

                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            children: [
                                              Text('Why Contract',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Montserrat',
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Image.asset('images/Line_5.png',),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height:30 ,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset('images/Full.png')),
                                        SizedBox(
                                          height:20 ,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                                            child: Center(
                                              child: ElevatedButton(onPressed: (){},
                                                  style: ElevatedButton.styleFrom(
                                                      primary: Colors.white
                                                  ),
                                                  child: Text('More Info',style: TextStyle(
                                                      color: Colors.black
                                                  ),)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                ),

                                Card(
                                    child: Container(
                                        width: 268,
                                        height: 320,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('images/Rectangle_48.png'),
                                              fit: BoxFit.cover
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Column(
                                              children: [

                                                Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Image.asset('images/img_17.png',width: 80,height: 70,)),

                                                SizedBox(
                                                  height: 10,
                                                ),

                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Row(
                                                    children: [
                                                      Image.asset('images/What_contract.png',width: 148,height: 29,),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      //Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                      Image.asset('images/Line_5.png',width: 50,color: Colors.black,),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:30 ,
                                                ),
                                                Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Image.asset('images/E.png')),
                                                SizedBox(
                                                  height:20 ,
                                                ),
                                                Align(
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
                                                          child: Text('More Info'),
                                                        )),
                                                    onPressed: (){},
                                                  ),
                                                ),
                                              ]
                                          ),
                                        )
                                    )
                                ),

                                SizedBox(
                                  width: 60,
                                ),
                                Card(
                                  child: Container(
                                      width: 268,
                                      height: 320,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('images/Rectangle_48.png'),
                                            fit: BoxFit.cover
                                        ),
                                      ),

                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Column(
                                            children: [

                                              Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Image.asset('images/img_18.png',width: 70,height: 70,)),

                                              SizedBox(
                                                height: 20,
                                              ),

                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  children: [
                                                    Image.asset('images/Cost.png',width: 50,height: 15,),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    //Image.asset('images/line_5.png',width: 50,color: Colors.black,),
                                                    Image.asset('images/Line_5.png',width: 50,color: Colors.black,),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height:35 ,
                                              ),
                                              Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Image.asset('images/Low.png')),
                                              SizedBox(
                                                height:20 ,
                                              ),
                                              Align(
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
                                                        child: Text('More Info'),
                                                      )),
                                                  onPressed: (){},
                                                ),
                                              ),
                                            ]
                                        ),
                                      )
                                  ),
                                ),
                              ]
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                //about()
              ],
            ),
          ),

          //Image.asset('images/We.png',width: 300,height: 100,)
          aboutMob()

        ],
      ),


      ),

        ]
  );
}

Widget about(){
  return Stack(
    children:[
      Align(
          alignment: Alignment.centerRight,
          child: Image.asset('images/Rectangle54.png')),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child:
            Card(
              child: Container(
                width: 1000,
                height: 550,
                color: Colors.white,
                child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 300),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset('images/About.png')),
                      ),


                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 95),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child:Image.asset('images/One.png',width: 400,)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 95),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child:Image.asset('images/img_20.png',width: 400,)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 95),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child:Image.asset('images/img_20.png',width: 400,)
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 350),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child:MaterialButton(
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
                                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                                    child: Text('More Info'),
                                  )),
                              onPressed: (){},
                            ),
                          )
                      ),
                    ]
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children:[
              Image.asset('images/img_21.png'),
              Padding(
                padding: const EdgeInsets.all(200.0),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('images/img_22.png',width: 120,height: 120,),
                      Image.asset('images/img_23.png',width: 160,height: 140,),
                    ],
                  ),
                ),
              ),

            ],
          ),
         advantage()
        ],
      ),

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 50),
        child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset('images/img_19.png',width: 950,height: 400,)),
      ),


    ],
  );
}

Widget aboutMob(){
  return Stack(
    children:[
      Align(
          alignment: Alignment.centerRight,
          child: Image.asset('images/Rectangle54.png')),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child:
            Card(
              child: Container(
                width: 1000,
                height: 570,
                color: Colors.white,
                child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset('images/About.png')),
                      ),


                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child:Image.asset('images/One.png',width: 400,)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset('images/img_19.png',width: 950,height: 300)),
                      ),
                     Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child:Image.asset('images/img_20.png',width: 400,height: 70,color: Colors.black,)
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 50),
                          child: Align(
                            alignment: Alignment.center,
                            child:MaterialButton(
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
                                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                                    child: Text('More Info'),
                                  )),
                              onPressed: (){},
                            ),
                          )
                      ),
                    ]
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children:[
              Image.asset('images/img_21.png',height: 200,),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('images/img_22.png',width: 120,height: 70,),
                      Image.asset('images/img_23.png',width: 160,height: 100,),
                    ],
                  ),
                ),
              ),

            ],
          ),
           advantageMOb()
        ],
      ),




    ],
  );
}


Widget advantage(){
  return Stack(
    children:[
      Image.asset('images/Rectangle59.png',height: 550),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35,top: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('images/img_24.png',width: 400,height: 100,)),
          ),
          Column(
            children: [
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('images/img_25.png',height: 50,)),
                  Stack(
                    children: [
                      Image.asset('images/img_26.png',height: 51,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                        child: Image.asset('images/img_27.png',width: 180,height: 30,),
                      ),
                    ],),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:12,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:12,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 60),
                    child: Image.asset('images/img_29.png',width: 350,height: 350,),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(
            height: 100,
          ),
          smart()
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 200),
        child: Align(
            alignment: Alignment.center,
            child: Image.asset('images/img_31.png',width: 1500,height: 400,)),
      ),

    ],
  );
}
Widget advantageMOb(){
  return Stack(
    children:[
      Image.asset('images/Rectangle59.png',height: 820),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0,bottom: 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('images/img_24.png',width: 400,height: 100,)),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset('images/img_25.png',height: 50,)),
                    Stack(
                      children: [
                        Image.asset('images/img_26.png',height: 51,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                          child: Image.asset('images/img_27.png',width: 180,height: 30,),
                        ),
                      ],),

                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:15,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:12,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                        SizedBox(
                          height:12,
                        ),
                        Image.asset('images/img_30.png',width: 20,height: 20,),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                    child: Image.asset('images/img_29.png',width: 350,height: 520,),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(
            height: 100,
          ),
         smartMob()
        ],
      ),
    Padding(
        padding: const EdgeInsets.only(top: 570),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_31.png',width: 1300,height: 300,)),
      ),

    ],
  );
}



Widget smart(){
  return Stack(
    children: [
      Image.asset('images/img_32.png'),
      Column(
        children: [
          Stack(
            children:[ Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/img_33.png',width: 300,height: 300,),
            ),

              Stack(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 450),
                    child: Image.asset('images/Rectangle64.png',width: 400,height: 300,),
                  ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 190,horizontal: 250),
                      child: Image.asset('images/img_34.png',width: 300,height: 300,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 480),
                      child: Image.asset('images/img_35.png',width: 370,height: 300,),
                    ),
                  ]
              ),
            ],),
        ],
      ),
      Column(
        children: [
          Stack(
            children: [Padding(
              padding: const EdgeInsets.only(right: 400),

              child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('images/img_36.png',width: 300,height: 200,)),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 140,right: 300),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('images/img_37.png',width: 400,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150,right: 300),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('images/img_38.png',width: 400,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 235,right: 230),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Card(
                    child: Container(
                      width: 470,
                      height: 500,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 15),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('complete, but not complex (fast, easy and intuitively)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 20,right: 320),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('user friendly',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 110),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('affordable (low cost per user per month)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 140),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('all imaginable files can be uploaded',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 5),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('very extensive task and email notification functionality',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),SizedBox(
                            height: 5,
                          ),

                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 35),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('web-based, available from any PC, laptop or tablet',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 115),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('extensive reporting/export functionality',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 0,left: 55),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('very flexible and configurable (you can create your own fields and templates)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 0,left: 55),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('secure and trusted (Single Sign On, SSL, 2-factor authentication, etc.)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),

                        ],

                      ),
                    ),

                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
         comp()
        ],
      ),

    ],
  );
}
Widget smartMob(){
  return Stack(
    children: [
      Image.asset('images/img_32.png'),
      Column(
        children: [
      Column(
      children: [
      Stack(
      children: [
        Padding(
      padding: const EdgeInsets.only(left: 20,top: 80),

      child: Align(
      alignment: Alignment.centerLeft,
      child: Image.asset('images/img_36.png',width: 300,height: 200,)),
      ),

      Padding(
      padding: const EdgeInsets.only(top: 220,right: 30),
      child: Align(
      alignment: Alignment.centerLeft,
      child: Image.asset('images/img_37.png',width: 400,)),
  ),
        Padding(
  padding: const EdgeInsets.only(top: 260,right: 30),
  child: Align(
  alignment: Alignment.centerLeft,
  child: Image.asset('images/img_38.png',width: 400,)),
  ),

        Padding(
          padding: const EdgeInsets.only(top: 350,left: 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Container(
                width: 470,
                height: 450,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('complete, but not complex (fast, easy and intuitively)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('user friendly',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('affordable (low cost per user per month)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('all imaginable files can be uploaded',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('very extensive task and email notification functionality',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),

                    SizedBox(

                      height: 5,
                    ),

                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('web-based, available from any PC, laptop or tablet',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('extensive reporting/export functionality',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,right: 0,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('very flexible and configurable (you can create your own fields and templates)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('images/img_39.png',width: 20,height: 20)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15,right: 0,left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('secure and trusted (Single Sign On, SSL, 2-factor authentication, etc.)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),




                  ],

                ),
              ),

            ),
          ),
        ),
        Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(top: 730),
              child: Image.asset('images/Rectangle64.png',width: 400,height: 300,),
            ),
              /* Padding(
                      padding: EdgeInsets.symmetric(vertical: 190,horizontal: 250),
                      child: Image.asset('images/img_34.png',width: 300,height: 300,),
                    ),*/
              Padding(
                padding: const EdgeInsets.only(top: 760),
                child: Image.asset('images/img_35.png',width: 370,height: 300,),
              ),
            ]
        ),

      ]),]),


          /*Stack(
            children:[
              /*Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/img_33.png',width: 300,height: 300,),
            ),*/

              Stack(
                  children:[ Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset('images/Rectangle64.png',width: 400,height: 300,),
                  ),
                   /* Padding(
                      padding: EdgeInsets.symmetric(vertical: 190,horizontal: 250),
                      child: Image.asset('images/img_34.png',width: 300,height: 300,),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset('images/img_35.png',width: 370,height: 300,),
                    ),
                  ]
              ),
            ],),*/
          compMob()
        ],
      ),
   /*  Column(
        children: [
          Stack(
            children: [Padding(
              padding: const EdgeInsets.only(right: 400),

              child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('images/img_36.png',width: 300,height: 200,)),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 140,right: 300),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('images/img_37.png',width: 400,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150,right: 300),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('images/img_38.png',width: 400,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 235,right: 230),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Card(
                    child: Container(
                      width: 470,
                      height: 500,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 15),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('complete, but not complex (fast, easy and intuitively)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 20,right: 320),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('user friendly',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 110),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('affordable (low cost per user per month)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 140),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('all imaginable files can be uploaded',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 5),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('very extensive task and email notification functionality',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),SizedBox(
                            height: 5,
                          ),

                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 35),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('web-based, available from any PC, laptop or tablet',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 115),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('extensive reporting/export functionality',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 0,left: 55),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('very flexible and configurable (you can create your own fields and templates)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25,right: 430),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/img_39.png',width: 20,height: 20)),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25,right: 0,left: 55),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('secure and trusted (Single Sign On, SSL, 2-factor authentication, etc.)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),

                        ],

                      ),
                    ),

                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          //  comp()
        ],
      ),*/
    ],
  );
}



Widget comp(){
  return
    Stack(
      children: [
        Card(child: Image.asset('images/img_32.png',height: 750,width: 1550,)),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 200,horizontal: 120),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('images/img_41.png',height: 350,width: 350)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 500),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_42.png',height: 100,width: 150)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 180),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_43.png',height: 100,width: 100)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 300,horizontal: 250),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_44.png',height: 150,width: 150)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 470,horizontal: 500),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_45.png',height: 150,width: 150)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 550,horizontal: 180),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_46.png',height: 100,width: 100)),
        ),
       contact()
      ],
    );


}
Widget compMob(){
  return
    Stack(
      children: [
        Card(child: Image.asset('images/img_32.png',height: 750,width: 1550,)),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('images/img_41.png',height: 250,width: 250)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 280,left: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('images/img_42.png',height: 100,width: 120)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 280,right: 20),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_43.png',height: 100,width: 100)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 350,left: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('images/img_44.png',height: 150,width: 150)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 350,right:20 ),
          child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/img_45.png',height: 150,width: 150)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Align(
              alignment: Alignment.center,
              child: Image.asset('images/img_46.png',height: 100,width: 100)),
        ),
        contactMob()
      ],
    );


}



Widget contact(){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 720),
        child: Card(child: Image.asset('images/img_61.png',)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 750,left: 100),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_50.png',width: 230,height: 230,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 910,left: 100),
        child: Align(
          alignment: Alignment.centerLeft,
          child: new Container(
            child: new Stack(
                children: <Widget>[
                  Image.asset('images/img_51.png',width: 400,height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child: TextField(
                      //textAlign: TextAlign.center,

                        autocorrect: false,
                        decoration:
                        //disable single line border below the text field
                        new InputDecoration.collapsed(hintText: 'Full Name',
                            hintStyle: TextStyle(color: Colors.white))),
                  ),
                ]),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 920,left: 530),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_54.png',width: 35,height: 35,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 935,left: 580),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('1123, Abc Building Main Road 12121212',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,color: Colors.white
              ),)
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 980,left: 100),
        child: Align(
          alignment: Alignment.centerLeft,
          child: new Container(
            child: new Stack(
                children: <Widget>[
                  Image.asset('images/img_51.png',width: 400,height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child: TextField(
                      //textAlign: TextAlign.center,

                        autocorrect: false,
                        decoration:
                        //disable single line border below the text field
                        new InputDecoration.collapsed(hintText: 'Buiseness E-mail',
                            hintStyle: TextStyle(color: Colors.white))),
                  ),

                ]),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 985,left: 530),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_55.png',width: 30,height: 30,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 990,left: 580),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('contract 123@gmail.com',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,color: Colors.white
              ),)
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 1050,left: 100),
        child: Align(
          alignment: Alignment.centerLeft,
          child:  Container(
            child:  Stack(
                children: <Widget>[
                  Image.asset('images/img_51.png',width: 400,height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child: TextField(
                      //textAlign: TextAlign.center,
                        autocorrect: false,
                        decoration:
                        //disable single line border below the text field
                        InputDecoration.collapsed(hintText: 'Contact Number',
                            hintStyle: TextStyle(color: Colors.white))),
                  ),
                ]),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 1060,left: 530),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_56.png',width: 30,height: 30,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 1066,left: 580),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('1123-456-7890',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,color: Colors.white
              ),)
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 1120,left:100 ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Send',style: TextStyle(
                color: Colors.black,
              ),)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 830,right: 160),
        child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset('images/img_57.png',width: 200,height: 200,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 920,right: 70),
        child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset('images/img_58.png',width: 280,height: 280,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 1190),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('images/img_59.png',width: 1150,height: 100,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 1220),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('images/img_60.png',width: 1500,height: 200,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 1310,left: 110),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('© 2023 Contract. All rights reserved.',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,color: Colors.white
              ),)
        ),
      ),
    ],
  );
}
Widget contactMob(){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 500),
        child: Card(child: Image.asset('images/img_61.png',)),
      ),
     Padding(
        padding: const EdgeInsets.only(top: 480,left: 20),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_50.png',width: 100,height: 100,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 540,left: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: new Container(
            child: new Stack(
                children: <Widget>[
                  Image.asset('images/img_51.png',width: 150,height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(top:5,left: 20),
                    child: TextField(
                      //textAlign: TextAlign.center,

                        autocorrect: false,
                        decoration:
                        //disable single line border below the text field
                        new InputDecoration.collapsed(hintText: 'Full Name',
                            hintStyle: TextStyle(color: Colors.white,fontSize: 10))),
                  ),
                ]),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 550,left: 175),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_54.png',width: 15,height: 15,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 550,left: 190),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('1123, Abc Building Main Road 12121212',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,color: Colors.white
              ),)
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 570,left: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: new Container(
            child: new Stack(
                children: <Widget>[
                  Image.asset('images/img_51.png',width: 150,height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(top:5,left: 20),
                    child: TextField(
                      //textAlign: TextAlign.center,

                        autocorrect: false,
                        decoration:
                        //disable single line border below the text field
                        new InputDecoration.collapsed(hintText: 'Buiseness E-mail',
                            hintStyle: TextStyle(color: Colors.white,fontSize: 10))),
                  ),

                ]),
          ),
        ),
      ),
     Padding(
        padding: const EdgeInsets.only(top: 580,left: 175),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_55.png',width: 15,height: 15,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 580,left: 195),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('contract 123@gmail.com',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,color: Colors.white
              ),)
        ),
      ),

     Padding(
        padding: const EdgeInsets.only(top: 600,left: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child:  Container(
            child:  Stack(
                children: <Widget>[
                  Image.asset('images/img_51.png',width: 150,height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(top:5,left: 20),
                    child: TextField(
                      //textAlign: TextAlign.center,
                        autocorrect: false,
                        decoration:
                        //disable single line border below the text field
                        InputDecoration.collapsed(hintText: 'Contact Number',
                            hintStyle: TextStyle(color: Colors.white,fontSize: 10))),
                  ),
                ]),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 610,left: 175),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/img_56.png',width: 15,height: 15,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 610,left: 195),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('1123-456-7890',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,color: Colors.white
              ),)
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 630,left:20 ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextButton(onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,


              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
                child: Text('Send',style: TextStyle(
                  color: Colors.black,
                ),),
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 520,right: 30),
        child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset('images/img_57.png',width: 70,height: 70,)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 550,right: 10),
        child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset('images/img_58.png',width: 100,height: 100,)),
      ),


      Padding(
        padding: const EdgeInsets.only(top: 680,left: 10),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('© 2023 Contract. All rights reserved.',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,color: Colors.white
              ),)
        ),
      ),
    ],
  );
}