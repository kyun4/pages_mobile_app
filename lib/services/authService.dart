// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   Future<UserCredential> userCredential(String email, String password) async {
//     try {
//       UserCredential userCredential = await _firebaseAuth
//           .signInWithEmailAndPassword(email: email, password: password);

//       return userCredential;
//     } on FirebaseAuthException catch (e) {
//       throw Exception(e.code);
//     }
//   }
// }
