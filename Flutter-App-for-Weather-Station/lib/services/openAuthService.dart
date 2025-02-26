import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class OAuthService {
  singWithGoogle() async {
    // begin the sign in Process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // get the user credentials associated with tht google account

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create new credentials for the user

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    // let user sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
