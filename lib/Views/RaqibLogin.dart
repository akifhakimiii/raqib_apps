import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:raqib_apps/Models/RaqibUser.dart';
//import 'package:raqib_apps/RaqibAuth/auth.dart';
import 'package:raqib_apps/Views/RaqibMainPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RaqibLogin extends StatefulWidget {
  @override
  _RaqibLoginState createState() => _RaqibLoginState();
}
 bool _isLoading = false;
class _RaqibLoginState extends State<RaqibLogin> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [
            Colors.purple,
            //Colors.purple[900],
            Colors.purple[800],
            Colors.purple[700],
            Colors.purple[600],
            Colors.purple[500],
            Colors.purple[400],
            Colors.purple[300],
            Colors.purple[200],
            Colors.purple[100],
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
        ),
        child: _isLoading ? Center(child: CircularProgressIndicator()) : ListView(
          children: <Widget>[
            headerSection(),
            SizedBox(height:40),
           Form(
             key: _formKey,
              child:textSection(),
              
           ),
            
          ],
        ),
        
      ),
      
    );
  }
Container textSection(){
 return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (input)
            {
              if(input.isEmpty){
                return 'Please enter username';
              }
            },
            onSaved: (input)=> _email = input,
            controller: userController,
            cursorColor: Colors.white,

            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              icon: Icon(Icons.assignment_ind, color: Colors.white70),
              hintText: "Username",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
             validator: (input)
            {
              if(input.isEmpty){
                return 'Please enter password';
              }
            },
            onSaved: (input)=> _password = input,
            controller: passwordController,
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.white70),
              hintText: "Password",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          buttonSection(),
        ],
      ),
    );
}
 final TextEditingController userController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
Container buttonSection(){
return Container
(
  width: MediaQuery.of(context).size.width,
  height: 40.0,
  margin: EdgeInsets.only(top:30.0),
  padding: EdgeInsets.symmetric(horizontal: 20.0),
  child: RaisedButton(
          // onPressed: userController.text == "" || passwordController.text == "" ? null : () {
          //       setState(() {
          //         _isLoading = true;
          //       });
          //       signIn(userController.text, passwordController.text);
          //     },
        onPressed:  (){
           signIn();
            },
       shape : RoundedRectangleBorder
       (
         borderRadius: BorderRadius.circular(5.0),
       ),
       child: Text(
         'Sign In',
         style: TextStyle
         (
           fontFamily: 'Oxanium',
           fontSize: 20.0,
           color: Colors.white,
           fontWeight: FontWeight.bold
         )
       ),
       color: Colors.purple[800]
  )
);

}
Container headerSection(){
  return Container
  (
    child: Column(
    children: <Widget>
    [
      new Container
      (
        margin: EdgeInsets.only(top: 80.0),
        padding: EdgeInsets.all(70),
    
        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/images/raqibb.png"),
                      ),
                    ),
      ),
    ],
    ),
  );

}
TextFormField txtId(String title, IconData icon){
  return TextFormField
  (
    obscureText: title == "Username" ? false : true,
    style: TextStyle(fontFamily: 'Oxanium', color: Colors.white70),
    decoration: InputDecoration
    (
      hintText: title,
      hintStyle: TextStyle(fontFamily: 'Oxanium', color: Colors.white70),
      icon: Icon(icon)
    ),
  );
}
TextFormField txtPassword(String title, IconData icon){
  return TextFormField
  (
    obscureText: title == "Password" ? false : true,
    style: TextStyle(fontFamily: 'Oxanium', color: Colors.white70),
    decoration: InputDecoration
    (
      hintText: title,
      hintStyle: TextStyle(fontFamily: 'Oxanium', color: Colors.white70),
      icon: Icon(icon)
    ),
  );
}

User _userFromFirebaseUser(FirebaseUser user){
  return user !=null ? User(uid: user.uid):null;
}

Future<void> signIn() async 
{
  final formState = _formKey.currentState;
  if(formState.validate()){
    formState.save();
    try{
      AuthResult user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
      print("Signed In with ID $user");
      Navigator.push(context,MaterialPageRoute(builder:(context)=> RaqibMainPage( user: user)));
      print('signed in');
      print(user);
    }
    catch(e){
      
      print(e.message);
    }
    
  }
}

}