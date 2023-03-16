import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'utils/responsiveLayout.dart';

class LoginBody extends StatelessWidget {
   LoginBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Login(),
      mediumScreen: MediumChild(),
      smallScreen: LoginMob(),
    );
  }
}



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible=false;
  bool isChecked = false;
  final ce=TextEditingController();
  final pass=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _auth=FirebaseAuth.instance;
  String? errorMessage;


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
                children: [
                  Image.asset('images/img_97.png', width: 2000, height: 800,),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Center(child: Image.asset(
                      'images/img_98.png', width: 900, height: 600,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 430),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'images/icon_img.png', width: 100, height: 100,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 240),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'images/img_99.png', width: 500, height: 400,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 700),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'images/img_100.png', height: 480, width: 70,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 900),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'images/img_101.png', height: 30, width: 30,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 185, left: 840),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Log in to continue',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15, color: Color(0xFF524C4C)
                          ),)
                    ),),
                 Form(
                   key: _formKey,
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 240,left: 620),
                           child: Align(
                             alignment: Alignment.centerLeft,
                             child: new Container(
                               child: new Stack(
                                   children: <Widget>[
                                     Image.asset('images/img_103.png',width: 600,height: 35,),
                                     Padding(
                                       padding: const EdgeInsets.only(top:10,left: 165),
                                       child: TextFormField(
                                           validator: (value){
                                             if(value!.isEmpty){
                                               return "Please Enter Your Email";
                                             }
                                             if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                                               return "Please enter valid Email";
                                             }
                                             return null;
                                           },
                                           textAlign: TextAlign.left,
                                           autocorrect: false,
                                           controller: ce,
                                           decoration:
                                           //disable single line border below the text field
                                           new InputDecoration.collapsed(hintText: 'Company E-mail',
                                               hintStyle: TextStyle(color: Color(0xFF908A8A),
                                                   fontSize: 12))),
                                     ),

                                   ]),
                             ),
                           ),
                         ),
                         SizedBox(
                           height: 20,
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 0,left: 620),
                           child: Align(
                             alignment: Alignment.centerLeft,
                             child: new Container(
                               child: new Stack(
                                   children: <Widget>[
                                     Image.asset('images/img_103.png',width: 600,height: 35,),
                                     Padding(
                                       padding: const EdgeInsets.only(top:10,left: 165),
                                       child: TextFormField(
                                         validator: (value){
                                           if(value!.isEmpty){
                                             return "Please Enter Your Password";
                                           }

                                           if(!RegExp(r'^.{6,}$').hasMatch(value)){
                                             return "Please Enter valid Password(Min. length 6)";
                                           }
                                         },
                                         controller: pass,
                                         obscureText: !_passwordVisible,
                                         textAlign: TextAlign.left,
                                         autocorrect: false,
                                         decoration: InputDecoration(
                                             isCollapsed: true,
                                             hintText: 'Password',
                                             border: InputBorder.none,
                                             hintStyle: TextStyle(color: Color(0xFF908A8A),
                                                 fontSize: 12
                                             ),
                                             suffixIcon: GestureDetector(
                                               child: Icon(
                                                 // Based on passwordVisible state choose the icon
                                                 _passwordVisible
                                                     ? Icons.visibility
                                                     : Icons.visibility_off,
                                                 color: Theme.of(context).primaryColorDark,
                                               ),
                                               onTap: (){
                                                 setState(() {
                                                   _passwordVisible = !_passwordVisible;
                                                 });
                                               }
                                               ,
                                             )


                                         ),
                                       ),
                                     ),

                                   ]),
                             ),
                           ),
                         ),
                       ],
                     )),

                  Padding(
                    padding: const EdgeInsets.only(top: 350,left: 760),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 360,left: 810),
                      child:Text('Remember Me',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'

                        ),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 410,left: 820),
                    child: MaterialButton(
                      padding: EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      splashColor: Colors.greenAccent,
                      elevation: 8.0,
                      child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/img_104.png'),
                              fit: BoxFit.cover,),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 70),
                            child: Text('Log In'),
                          )),
                      onPressed: (){
                            login(ce.text, pass.text);
                        /*FirebaseAuth.instance.signInWithEmailAndPassword(email: ce.text, password: pass.text)
                            .then((value) {
                              Navigator.pushNamed(context, '/home');
                        });*/
                      },
                    ),),
                ])
        )
    );
  }

  void login(String email,String password) async{

    if(_formKey.currentState!.validate()){
      try {
        await _auth.signInWithEmailAndPassword(email: email, password: password)
            .then((uid) =>
        {
          Fluttertoast.showToast(msg: "Login Successful"),
          Navigator.of(context).pushNamed('/home'),
        });
      }on FirebaseAuthException catch(error){
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}




class LoginMob extends StatefulWidget {
  const LoginMob({Key? key}) : super(key: key);

  @override
  State<LoginMob> createState() => _LoginMobState();
}

class _LoginMobState extends State<LoginMob> {
  bool _passwordVisible=false;
  bool isChecked = false;
  final TextEditingController ce= new TextEditingController();
  final TextEditingController pass=new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _auth=FirebaseAuth.instance;
  String? errorMessage;


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
                children: [
                  Image.asset('images/img_97.png',),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(child: Image.asset(
                      'images/img_98.png', width: 1500, height: 250,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/icon_img.png', width: 100, height: 100,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/img_99.png', width: 300, height: 200,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/img_101.png', height: 30, width: 30,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:340),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text('Log in to continue',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15, color: Color(0xFF524C4C)
                          ),)
                    ),),

                  Form(
                    key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 380,),
                            child: Align(
                              alignment: Alignment.center,
                              child: new Container(
                                child: new Stack(
                                    children: <Widget>[
                                      Image.asset('images/img_103.png',width: 600,height: 35,),
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left: 120),
                                        child: TextFormField(
                                            onSaved: (value) {
                                              ce.text = value!;
                                            },
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return "Please Enter Your Email";
                                              }
                                              if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                                                return "Please enter valid Email";
                                              }
                                              return null;
                                            },
                                            textAlign: TextAlign.left,
                                            autocorrect: false,
                                            controller: ce,
                                            decoration:
                                            //disable single line border below the text field
                                            new InputDecoration.collapsed(hintText: 'Company E-mail',
                                                hintStyle: TextStyle(color: Color(0xFF908A8A),
                                                    fontSize: 12))),
                                      ),

                                    ]),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: new Container(
                                child: new Stack(
                                    children: <Widget>[
                                      Image.asset('images/img_103.png',width: 600,height: 35,),
                                      Padding(
                                        padding: const EdgeInsets.only(top:10,left: 120),
                                        child:  TextFormField(
                                          onSaved: (value) {
                                            pass.text = value!;
                                          },
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return "Please Enter Your Password";
                                            }

                                            if(!RegExp(r'^.{6,}$').hasMatch(value)){
                                              return "Please Enter valid Password(Min. length 6)";
                                            }
                                          },
                                          controller: pass,
                                          obscureText: !_passwordVisible,
                                          textAlign: TextAlign.left,
                                          autocorrect: false,
                                          decoration: InputDecoration(
                                              isCollapsed: true,
                                              hintText: 'Password',
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(color: Color(0xFF908A8A),
                                                  fontSize: 12
                                              ),
                                              suffixIcon: GestureDetector(
                                                child: Icon(
                                                  // Based on passwordVisible state choose the icon
                                                  _passwordVisible
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                  color: Theme.of(context).primaryColorDark,
                                                ),
                                                onTap: (){
                                                  setState(() {
                                                    _passwordVisible = !_passwordVisible;
                                                  });
                                                }
                                                ,
                                              )


                                          ),
                                        ),
                                      ),

                                    ]),
                              ),
                            ),
                          ),
                        ],
                      )),

                  Padding(
                    padding: const EdgeInsets.only(top: 465,left: 100),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 470,left: 150),
                      child:Text('Remember Me',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'

                        ),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 500,),
                    child: Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.greenAccent,
                        elevation: 8.0,
                        child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/img_104.png'),
                                fit: BoxFit.cover,),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 70),
                              child: Text('Log In'),
                            )),
                        onPressed: (){
                          login(ce.text, pass.text);

                         /* FirebaseAuth.instance.signInWithEmailAndPassword(email: ce.text, password: pass.text)
                              .then((value) {
                                Navigator.pushNamed(context, '/home');
                          });*/
                        },
                      ),
                    ),),
                ])
        )
    );
  }

  void login(String email,String password) async{

    if(_formKey.currentState!.validate()){
     try {
       await _auth.signInWithEmailAndPassword(email: email, password: password)
           .then((uid) =>
       {
         Fluttertoast.showToast(msg: "Login Successful"),
         Navigator.of(context).pushNamed('/home'),
       });
     }on FirebaseAuthException catch(error){
       switch (error.code) {
         case "invalid-email":
           errorMessage = "Your email address appears to be malformed.";

           break;
         case "wrong-password":
           errorMessage = "Your password is wrong.";
           break;
         case "user-not-found":
           errorMessage = "User with this email doesn't exist.";
           break;
         case "user-disabled":
           errorMessage = "User with this email has been disabled.";
           break;
         case "too-many-requests":
           errorMessage = "Too many requests";
           break;
         case "operation-not-allowed":
           errorMessage = "Signing in with Email and Password is not enabled.";
           break;
         default:
           errorMessage = "An undefined Error happened.";
       }
       Fluttertoast.showToast(msg: errorMessage!);
       print(error.code);
     }
    }
  }
}



class MediumChild extends StatelessWidget {
  const MediumChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}