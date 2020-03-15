import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//* Function to allow the user to sign-in using their
//* Google account
//* -----------------

//* Instanciate Firebase and GoogleSignIn
final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn =  GoogleSignIn();

//* Auth/Login method
//TODO: The user's info must be accessible for all the files
Future<String> signInWithGoogle() async{
  //* Google login process
  final GoogleSignInAccount googleSignInAccount =  await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential authCred = GoogleAuthProvider.getCredential(
    idToken: googleSignInAuthentication.idToken,
    accessToken: googleSignInAuthentication.accessToken
    );

  //*Firebase login process
  final AuthResult authResult = await _firebaseAuth.signInWithCredential(authCred);
  final FirebaseUser user = authResult.user;

  //! Assertions
  //* User exists and it is not anonymus
  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  //* User has a valid UID
  final FirebaseUser currentUser = await _firebaseAuth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle success!: $user';

}

//*Sign out function
void signOutGoogle() async{
  await _googleSignIn.signOut();

  print('User signed out!');
}