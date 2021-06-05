import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:connectivity/connectivity.dart';
import 'package:firebase_core/firebase_core.dart';

class ManageAuth {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  manageAuth() {
    initializeFirebaseServices();
  }

  void initializeFirebaseServices() async {
    bool internetConnection = await checkInternetConnectivity();
    if (internetConnection) {
      // await Firebase.?initializeApp()
      //are you sure it is reaching here?
      // i dont know bro
      // already initlised in main no need
      // _auth =
      // _firestore
    }
  }

  Future<bool> checkInternetConnectivity() async {
    String source = '';
    final Connectivity _connectivity = Connectivity();
    ConnectivityResult result = await _connectivity.checkConnectivity();
    switch (result) {
      case ConnectivityResult.mobile:
        source = 'Mobile';
        break;
      case ConnectivityResult.wifi:
        source = 'Wi-Fi';
        break;
      case ConnectivityResult.none:
        source = 'None';
        break;
      default:
        source = 'None';
        break;
    }
    String connection = source;
    if (connection == 'None') {
      return false;
    } else {
      return true;
    }
  }

  Future<bool> signup({e, p}) async {
    //   UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //   email: e,
    //   password: p
    // );
    var status = false;
    try {
      await _auth
          .createUserWithEmailAndPassword(email: e, password: p)
          .then((dynamic user) {
        saveUserDataInSignUp(_auth.currentUser);
        // print(user);
        status = true;
      }).catchError((error) {
        print("Error is ");
        print(error);
        status = false;
      });
    } catch (e) {
      print(e);
      print("Failed to login");
      status = false;
    }
    return status;
  }

  Future<bool> login({email, pass}) async {
    var status = false;
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: pass)
          .then((dynamic user) async {
        status = true;
        // final User currentUser = _auth.currentUser;
      }).catchError((error) {
        status = false;
      });
    } catch (e) {
      status = false;
    }
    return status;
  }

  Future<void> saveUserDataInSignUp(user) async {
    try {
      await _firestore
          .collection('users')
          .doc(user.email)
          .collection('details')
          .doc("Personal Details")
          .set({'email': user.uid, 'userId': user.email});
    } catch (e) {
      print(e);
      print("Failed to upload");
    }
  }

  Future<void> updateUserDataInSignUp({firstN, lastN, phoneN, add}) async {
    try {
      print(firstN);
      print(lastN);
      print(phoneN);

      await _firestore
          .collection('users')
          .doc(_auth.currentUser.email)
          .collection('details')
          .doc("Personal Details")
          .update(({
            'firstName': firstN,
            'lastName': lastN,
            'phoneNumber': phoneN,
            'address': add
          }));
    } catch (e) {
      print(e);
      print("Failed to upload");
    }
  }
}
