import 'package:firebase_auth/firebase_auth.dart';
import 'firestore_service.dart';

abstract class AuthenticationInterface {

  Future<void> login(String email, String password);
  Future<void> signout();
}

class AuthenticationService extends AuthenticationInterface {
  @override
  Future<void> login(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
  }



  @override
  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }
}

class FirestoreService {
}
