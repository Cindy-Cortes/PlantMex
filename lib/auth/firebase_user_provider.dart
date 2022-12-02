import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PlantmexFirebaseUser {
  PlantmexFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PlantmexFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PlantmexFirebaseUser> plantmexFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PlantmexFirebaseUser>(
      (user) {
        currentUser = PlantmexFirebaseUser(user);
        return currentUser!;
      },
    );
