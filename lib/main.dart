import 'package:flutter/material.dart';
import 'package:raqib_apps/Services/auth_services.dart';
import 'package:raqib_apps/Views/RaqibLogin.dart';
import 'package:raqib_apps/Views/RaqibLogin2.dart';
import 'package:raqib_apps/tabbedPageRaqib.dart';
import 'package:raqib_apps/Views/RaqibMainPage.dart';
import 'package:raqib_apps/Views/RaqibLogin.dart';

import 'Services/raqib_provider.dart';


// void main() => runApp(MaterialApp(
//   home: RaqibLogin()

  
// ));
void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
     
//       home: RaqibLogin(),
//     );
//   }
// }   
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: AuthService(),
        child:MaterialApp(
     
      home: HomeController(),
      routes:<String, WidgetBuilder>{
        '/signUp': (BuildContext context) => RaqibLogin2(authFormType: AuthFormType.signUp),
          '/signIn': (BuildContext context) => RaqibLogin2(authFormType: AuthFormType.signIn),
        '/RaqibMainPage' : (BuildContext context) => HomeController(),
        
      },
    ),
    );
  }
}   
class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          final bool signedIn = snapshot.hasData;
          return signedIn ? RaqibMainPage(): RaqibLogin();
        }
        return CircularProgressIndicator();
      }
    );
}
}

