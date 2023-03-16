
import 'dart:io';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:home_page/languageChange.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'l10n/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
//import 'firebase_options.dart';
import 'Sign_up.dart';
import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'SideButtons.dart';
import 'widgets/top_bar_cotents.dart';
import 'widgets/drawer.dart';
import 'Login.dart';
import 'ContractBenefits.dart';
import 'WhyContract.dart';
import 'HomePage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
String get name => 'ResponsiveApp';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 /* if(Platform.isWindows){
    await Firebase.initializeApp(
        //name: name,

        options: FirebaseOptions(
            apiKey: "AIzaSyAygOglsB__DXAIU6opn9aHaQt48akGzaM",
            appId:  "1:414657274359:web:aca29303de5a54934c4ef2",
            messagingSenderId: "414657274359",
            projectId:  "responsiveapp-f235f"
        ),);
  }*/

  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAygOglsB__DXAIU6opn9aHaQt48akGzaM",
          appId: "1:414657274359:web:aca29303de5a54934c4ef2",
          messagingSenderId: "414657274359",
          projectId: "responsiveapp-f235f"
      ),
    );
  }else {
    await Firebase.initializeApp(

    );
  }




  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context)=> LanguageChangeProvider(),
      child: Builder(
        builder: (context)=>
         MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              backgroundColor: Color(0xFFFAD6BE)
          ),


          home: const MyHomePage(),
            routes:{

              '/signup':(context) => SignBody(),
              '/login':(context) => LoginBody(),
              '/second':(context) => WhyBody(),
              '/home' :(context) => Home(),
              '/third' :(context) => BenefitsBody(),
             // '/signupmob':(context) => SignUpMob(),
            },
          locale:Provider.of<LanguageChangeProvider>(context,listen: true).current,

          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Image appLogo = new Image(
        image: new ExactAssetImage("images/icon_img.png"),
        height: 150.0,
        width: 150.0,
        alignment: FractionalOffset.center);
    var screensize=MediaQuery.of(context).size;
    final current=MediaQuery.of(context).size.width;
    return   Scaffold(

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
                  //NavBar(),
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
        largeScreen: LargeChild(),
        mediumScreen: MediumChild(),
       smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  const LargeChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            children: [Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/img.png',
                    width: 315,
                    height: 540,
                  ),
                  Image.asset(
                    'images/img_1.png',
                    width: 350,
                    height: 540,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/img_2.png',
                    width: 350,
                    height: 540,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/img_3.png',
                    width: 320,
                    height: 540,
                  ),
                ],
              ),
            ),
              widget2(context),
            ],
          ),
          //widget3()
        ],
      ),
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


class SmallChild extends StatelessWidget {
  const SmallChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [Container(
              height: 500,
              width: double.infinity,
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    'images/img_2.png',
                    width: 315,
                    height: 540,
                  ),
                  Image.asset(
                    'images/img1.png',
                    width: 350,
                    height: 540,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/img_3.png',
                    width: 350,
                    height: 540,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/img_4.png',
                    width: 331,
                    height: 540,
                  ),
                ],
              ),

            ),
            ],
          ),
          widgets(),
          widgetWhy()
        ],
      ),
    );
  }
}



