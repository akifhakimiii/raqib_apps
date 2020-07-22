import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:raqib_apps/Models/RaqibHeartData.dart';
import 'package:raqib_apps/Models/RaqibUser.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});
  final CollectionReference raqibHeart = Firestore.instance.collection('RaqibHeart');

 Future<void> updateUserData(String analysis, String status, String minimum, String maximum, String average, Timestamp date) async {
    return await raqibHeart.document(uid).setData({
      'analysis': analysis,
      'status': status,
      'minimum': minimum,
      'maximum' : maximum,
      'average' :average,
      'date' : date,
    });
  }

  
  List<HeartData> _heartListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      //print(doc.data);
      return HeartData(
        analysis: doc.data['analysis'] ?? 'o',
        status: doc.data['status'] ?? '0',
        minimum: doc.data['minimum'] ?? '0',
        maximum: doc.data['maximum'] ?? '0',
        average: doc.data['average'] ?? '0',
        date: doc.data['date'] ?? '0',
      );
    }).toList();
  }

  // user data from snapshots
  UserHeartData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserHeartData(
      uid: uid,
      analysis: snapshot.data['analysis'], 
        status: snapshot.data['status'] ,
        minimum: snapshot.data['minimum'], 
        maximum: snapshot.data['maximum'], 
        average: snapshot.data['average'] ,
        date: snapshot.data['date'] 
    );
  }

  // get brews stream
  Stream<List<HeartData>> get heart {
    return raqibHeart.snapshots()
      .map(_heartListFromSnapshot);
  }

  // get user doc stream
  Stream<UserHeartData> get userData {
    return raqibHeart.document(uid).snapshots()
      .map(_userDataFromSnapshot);
  }

}