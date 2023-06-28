import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  Future<UserCredential?>signWithGoogle() async{


    final GoogleSignInAccount? guser = await GoogleSignIn(clientId: "795589723045-nev60l60435f44e1nk7mupof7ithnkn5.apps.googleusercontent.com").signIn();
    final GoogleSignInAuthentication gAuth = await guser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,


    );
    return await FirebaseAuth.instance.signInWithCredential(credential);

  }


}