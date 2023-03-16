import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'HomePage.dart';
import 'UserModal.dart';
import 'utils/responsiveLayout.dart';

class SignBody extends StatelessWidget {
  const SignBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: SignUp(),
      mediumScreen: MediumChild(),
      smallScreen: SignUpMob(),
    );
  }
}


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible=false;
  bool isChecked = false;
  final Key=new GlobalKey<FormState>();



  final fn=TextEditingController();
  final ln=TextEditingController();
  final cn=TextEditingController();
  final ce=TextEditingController();
  final cnum=TextEditingController();
  final pass=TextEditingController();
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;






  @override
  void initState(){
    super.initState();

  }


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
        body: Form(
          key: Key,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset('images/img_97.png',width: 2000,height: 800,),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Center(child: Image.asset('images/img_98.png',width: 900,height: 600,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 430),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('images/icon_img.png',width: 100,height: 100,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170,left: 240),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('images/img_99.png',width: 500,height: 400,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150,left: 700),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('images/img_100.png',height: 480,width: 70,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150,left: 900),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('images/img_101.png',height: 30,width: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 185,left: 840),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Sign Up to continue',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,color: Color(0xFF524C4C)
                        ),)
                  ),),

                //formfields

                Padding(
                  padding: const EdgeInsets.only(top: 230,left: 660),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      child: new Stack(
                          children: <Widget>[
                            Image.asset('images/img_102.png',width: 350,height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(top:15,left: 125),
                              child: TextFormField(
                                  validator: (value) {
                                    RegExp regex = new RegExp(
                                        r'^.{3,}$');
                                    if (value!.isEmpty) {
                                      return ("First Name cannot be Empty");
                                    }
                                    if (!regex.hasMatch(value)) {
                                      return ("Enter Valid name(Min. 3 Character)");
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.left,
                                  autocorrect: false,
                                  controller: fn,
                                  //validator:(val) => val?.length==0? 'Please Enter First Name' :null,
                                  //onSaved: (val)=> fn.text=val!,
                                  decoration:
                                  //disable single line border below the text field
                                  new InputDecoration.collapsed(hintText: 'First Name',
                                      hintStyle: TextStyle(color: Color(0xFF908A8A),
                                          fontSize: 12))),
                            ),

                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230,left: 850),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      child: new Stack(
                          children: <Widget>[
                            Image.asset('images/img_102.png',width: 350,height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(top:15,left: 125),
                              child: TextFormField(
                                  validator: (value) {
                                    RegExp regex = new RegExp(
                                        r'^.{3,}$');
                                    if (value!.isEmpty) {
                                      return ("First Name cannot be Empty");
                                    }
                                    if (!regex.hasMatch(value)) {
                                      return ("Enter Valid name(Min. 3 Character)");
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.left,
                                  autocorrect: false,
                                  controller: ln,
                                  decoration:
                                  //disable single line border below the text field
                                  new InputDecoration.collapsed(hintText: 'Last Name',
                                      hintStyle: TextStyle(color: Color(0xFF908A8A),
                                          fontSize: 12))),
                            ),

                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280,left: 620),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      child: new Stack(
                          children: <Widget>[
                            Image.asset('images/img_103.png',width: 600,height: 35,),
                            Padding(
                              padding: const EdgeInsets.only(top:10,left: 165),
                              child: TextField(
                                  textAlign: TextAlign.left,
                                  autocorrect: false,
                                  controller: cn,
                                  decoration:
                                  //disable single line border below the text field
                                  new InputDecoration.collapsed(hintText: 'Company Name',
                                      hintStyle: TextStyle(color: Color(0xFF908A8A),
                                          fontSize: 12))),
                            ),

                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 325,left: 620),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      child: new Stack(
                          children: <Widget>[
                            Image.asset('images/img_103.png',width: 600,height: 35,),
                            Padding(
                              padding: const EdgeInsets.only(top:15,left: 165),
                              child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return ("Please Enter Your Email");
                                    }
                                    // reg expression for email validation
                                    if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                        .hasMatch(value)) {
                                      return ("Please Enter a valid email");
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
                Padding(
                  padding: const EdgeInsets.only(top: 370,left: 620),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      child: new Stack(
                          children: <Widget>[
                            Image.asset('images/img_103.png',width: 600,height: 35,),
                            Padding(
                              padding: const EdgeInsets.only(top:15,left: 165),
                              child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return ("Please Enter Your Number");
                                    }
                                    // reg expression for email validation
                                    /* if (!RegExp("/^([+]\d{2})?\d{10}").hasMatch(value)) {
                                             return ("Please Enter a valid Number");
                                           }*/
                                    return null;
                                  },
                                  textAlign: TextAlign.left,
                                  autocorrect: false,
                                  controller: cnum,
                                  decoration:
                                  //disable single line border below the text field
                                  new InputDecoration.collapsed(hintText: 'Contact Number',
                                      hintStyle: TextStyle(color: Color(0xFF908A8A),
                                          fontSize: 12))),
                            ),

                          ]),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 415,left: 620),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      child: new Stack(
                          children: <Widget>[
                            Image.asset('images/img_103.png',width: 600,height: 35,),
                            Padding(
                              padding: const EdgeInsets.only(top:15,left: 165),
                              child: TextFormField(
                                validator: (value) {
                                  RegExp regex = new RegExp(r'^.{6,}$');
                                  if (value!.isEmpty) {
                                    return ("Password is required for login");
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Enter Valid Password(Min. 6 Character)");
                                  }
                                },
                                controller: pass,
                                obscureText: !_passwordVisible,
                                textAlign: TextAlign.left,
                                autocorrect: false,
                                decoration: InputDecoration(
                                    isCollapsed: true,
                                    hintText: 'Create Password',
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


                Padding(
                  padding: const EdgeInsets.only(top: 460,left: 770),
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
                    padding: const EdgeInsets.only(top: 470,left: 800),
                    child:Text('I have accepted the terms and conditions',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'

                      ),)
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 520,left: 820),
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
                          child: Text('Sign Up'),
                        )),
                    onPressed: (){
                      signUp(ce.text, pass.text);
                    },
                    //(){
                    //print('no');
                    /*FirebaseAuth.instance.createUserWithEmailAndPassword(email: ce.text, password: pass.text)
                        .then((value) {
                         // alertDialog(context, 'Successfully Registered');
                      print('Successfully Registered');
                          Navigator.pushNamed(context, '/login');
                    });*/

                    // },
                  ),),


                Padding(
                    padding: const EdgeInsets.only(top: 560,left: 845),
                    child:Text('Already have an account?',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'

                      ),)
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 575,left: 885),
                    child:TextButton(
                      child: Text('Log in',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Color(0xFFED7826)

                        ),),
                      onPressed: (){
                        Navigator.pushNamed(context, '/login');
                      },
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
  void signUp(String email, String password) async {
    try {
      if (Key.currentState!.validate()) {
        await _auth.createUserWithEmailAndPassword(
            email: email, password: password)
            .then((value) =>
        {
          postDetailsToFirestore()
        });
      }
    } on FirebaseAuthException catch (error) {
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



  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel=UserModel();

    // writing all the values
    userModel.uid = user!.uid;
    userModel.firstName = fn.text;
    userModel.lastName = ln.text;
    userModel.companyName = cn.text;
    userModel.companyMail = ce.text;
    userModel.contactNum = cnum.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushNamed(context, '/home');
  }
}



class SignUpMob extends StatefulWidget {
  const SignUpMob({Key? key}) : super(key: key);

  @override
  State<SignUpMob> createState() => _SignUpMobState();
}

class _SignUpMobState extends State<SignUpMob> {
  bool _passwordVisible = false;
  bool isChecked = false;
  final key = new GlobalKey<FormState>();


  final fn = TextEditingController();
  final ln = TextEditingController();
  final cn = TextEditingController();
  final ce = TextEditingController();
  final cnum = TextEditingController();
  final pass = TextEditingController();
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    // var screenheight = MediaQuery.of(context).size;
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
        body: Form(
          //key: _formKey,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Center(child: Image.asset('images/img_97.png',)),
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
                  padding: const EdgeInsets.only(top: 70,),
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
                  padding: const EdgeInsets.only(top: 340),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text('Sign Up to continue',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15, color: Color(0xFF524C4C)
                        ),)
                  ),),

                //formfields

                Form(
                    key: key,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 380, left: 0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: new Container(
                              child: new Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/img_102.png', width: 280,
                                      height: 30,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 7, left: 100),
                                      child: TextFormField(
                                          validator: (value) {
                                            RegExp regex = new RegExp(
                                                r'^.{3,}$');
                                            if (value!.isEmpty) {
                                              return ("First Name cannot be Empty");
                                            }
                                            if (!regex.hasMatch(value)) {
                                              return ("Enter Valid name(Min. 3 Character)");
                                            }
                                            return null;
                                          },
                                          textAlign: TextAlign.left,
                                          autocorrect: false,
                                          controller: fn,
                                          //validator:(val) => val?.length==0? 'Please Enter First Name' :null,
                                          //onSaved: (val)=> fn.text=val!,
                                          decoration:
                                          //disable single line border below the text field
                                          new InputDecoration.collapsed(
                                              hintText: 'First Name',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF908A8A),
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
                          padding: const EdgeInsets.only(top: 0, left: 0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: new Container(
                              child: new Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/img_102.png', width: 280,
                                      height: 30,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 7, left: 100),
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return ("Last Name cannot be Empty");
                                            }
                                            return null;
                                          },
                                          onSaved: (value) {
                                            ln.text = value!;
                                          },
                                          textAlign: TextAlign.left,
                                          autocorrect: false,
                                          controller: ln,
                                          decoration:
                                          //disable single line border below the text field
                                          new InputDecoration.collapsed(
                                              hintText: 'Last Name',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF908A8A),
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
                          padding: const EdgeInsets.only(top: 0, left: 35),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: new Container(
                              child: new Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/img_103.png', width: 600,
                                      height: 35,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 7, left: 60),
                                      child: TextField(
                                          textAlign: TextAlign.left,
                                          autocorrect: false,
                                          controller: cn,
                                          decoration:
                                          //disable single line border below the text field
                                          new InputDecoration.collapsed(
                                              hintText: 'Company Name',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF908A8A),
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
                          padding: const EdgeInsets.only(top: 0, left: 35),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: new Container(
                              child: new Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/img_103.png', width: 600,
                                      height: 35,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 7, left: 60),
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return ("Please Enter Your Email");
                                            }
                                            // reg expression for email validation
                                            if (!RegExp(
                                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                                .hasMatch(value)) {
                                              return ("Please Enter a valid email");
                                            }
                                            return null;
                                          },
                                          textAlign: TextAlign.left,
                                          autocorrect: false,
                                          controller: ce,

                                          /*        if(!validateEmail(value)){
                              return "please enter valid email";
                            }*/

                                          decoration:
                                          //disable single line border below the text field
                                          new InputDecoration.collapsed(
                                              hintText: 'Company E-mail',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF908A8A),
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
                          padding: const EdgeInsets.only(top: 0, left: 35),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: new Container(
                              child: new Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/img_103.png', width: 600,
                                      height: 35,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 7, left: 60),
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return ("Please Enter Your Number");
                                            }
                                            // reg expression for email validation
                                            /* if (!RegExp("/^([+]\d{2})?\d{10}").hasMatch(value)) {
                                             return ("Please Enter a valid Number");
                                           }*/
                                            return null;
                                          },
                                          textAlign: TextAlign.left,
                                          autocorrect: false,
                                          keyboardType: TextInputType.number,
                                          controller: cnum,
                                          decoration:
                                          //disable single line border below the text field
                                          new InputDecoration.collapsed(
                                              hintText: 'Contact Number',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFF908A8A),
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
                          padding: const EdgeInsets.only(top: 0, left: 35),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: new Container(
                              child: new Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/img_103.png', width: 600,
                                      height: 35,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 7, left: 60),
                                      child: TextFormField(
                                        validator: (value) {
                                          RegExp regex = new RegExp(r'^.{6,}$');
                                          if (value!.isEmpty) {
                                            return ("Password is required for login");
                                          }
                                          if (!regex.hasMatch(value)) {
                                            return ("Enter Valid Password(Min. 6 Character)");
                                          }
                                        },
                                        controller: pass,
                                        obscureText: !_passwordVisible,
                                        textAlign: TextAlign.left,
                                        autocorrect: false,
                                        decoration: InputDecoration(
                                            isCollapsed: true,
                                            hintText: 'Create Password',
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                                color: Color(0xFF908A8A),
                                                fontSize: 12
                                            ),
                                            suffixIcon: GestureDetector(
                                              child: Icon(
                                                // Based on passwordVisible state choose the icon
                                                _passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: Theme
                                                    .of(context)
                                                    .primaryColorDark,
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  _passwordVisible =
                                                  !_passwordVisible;
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
                  padding: const EdgeInsets.only(top: 630, left: 100),
                  child: Align(
                    alignment: Alignment.topLeft,
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
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 650, left: 150),
                    child: Text('I have accepted the terms and conditions',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'

                      ),)
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 680,),
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
                                vertical: 10, horizontal: 90),
                            child: Text('Sign Up'),
                          )),
                      onPressed: () {
                        signUp(ce.text, pass.text);
                      },
                      //(){
                      //print('no');
                      /*FirebaseAuth.instance.createUserWithEmailAndPassword(email: ce.text, password: pass.text)
                          .then((value) {
                           // alertDialog(context, 'Successfully Registered');
                        print('Successfully Registered');
                            Navigator.pushNamed(context, '/login');
                      });*/

                      // },
                    ),
                  ),),


                Padding(
                    padding: const EdgeInsets.only(top: 740,),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Already have an account?',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'

                        ),),
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 750),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text('Log in',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Color(0xFFED7826)

                          ),),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    )
                ),
              ],
            ),
          ),
        )
    );
  }

  void signUp(String email, String password) async {
    try {
      if (key.currentState!.validate()) {
        await _auth.createUserWithEmailAndPassword(
            email: email, password: password)
            .then((value) =>
        {
          postDetailsToFirestore()
        });
      }
    } on FirebaseAuthException catch (error) {
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



  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

   UserModel userModel=UserModel();

    // writing all the values
    userModel.uid = user!.uid;
    userModel.firstName = fn.text;
    userModel.lastName = ln.text;
    userModel.companyName = cn.text;
    userModel.companyMail = ce.text;
    userModel.contactNum = cnum.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushNamed(context, '/home');
  }
}






class MediumChild extends StatelessWidget {
  const MediumChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
