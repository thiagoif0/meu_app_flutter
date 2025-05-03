class AuthUserInfo {
  const AuthUserInfo({
    this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
    this.phoneNumber,
  });

  final String? uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;
  final String? phoneNumber;
}

abstract class BaseAuthUser {
  bool get loggedIn;
  bool get emailVerified;

  AuthUserInfo get authUserInfo;

  Future? delete();
  Future? updateEmail(String email);
  Future? updatePassword(String newPassword);
  Future? sendEmailVerification();
  Future refreshUser() async {}

  String? get uid => authUserInfo.uid;
  String? get email => authUserInfo.email;
  String? get displayName => authUserInfo.displayName;
  String? get photoUrl => authUserInfo.photoUrl;
  String? get phoneNumber => authUserInfo.phoneNumber;
}

class FakeAuthUser extends BaseAuthUser {
  @override
  AuthUserInfo get authUserInfo => AuthUserInfo(
        uid: 'fake-user',
        email: '',
        displayName: '',
        photoUrl: '',
        phoneNumber: '',
      );

  @override
  bool get emailVerified => false;

  @override
  Future delete() async {}

  @override
  Future updateEmail(String email) async {}

  @override
  Future updatePassword(String newPassword) async {}

  @override
  Future sendEmailVerification() async {}

  @override
  Future refreshUser() async {}
}


BaseAuthUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
