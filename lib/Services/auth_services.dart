import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<String> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged.map(
    (FirebaseUser user) => user?.uid,
    );
    //user singin
    Future<String> signInWithEmailAndPassword(String email, String password) async{
    
      return (await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password)).user.uid;
       
    }
    //sign out
    signOut(){
      return _firebaseAuth.signOut();
    }
}