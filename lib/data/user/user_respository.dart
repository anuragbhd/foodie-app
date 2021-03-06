import 'user.dart';

/// A class that helps with user-related data and actions.
///
/// Defines an interface or contract for concrete user repositories.
///
/// Today there's a Firebase-based user repository,
/// tomorrow there could be an API-based user repository,
/// or even a local storage based user repository (for caching),
/// and so on.
abstract class UserRepository {
  AuthStatus get authStatus;

  /// Returns the currently logged in user,
  /// null if no user is logged in.
  Future<User> getCurrentUser();

  /// Returns the user identified by given id.
  Stream<User> getUser(String id);

  /// Returns the user identified by given email.
  Stream<User> getUserByEmail(String email);

  /// Returns the current user when auth status changes.
  ///
  /// On successful login, current user is returned.
  /// On successful logout, null is returned.
  Stream<User> onAuthChanged();

  /// Logs a user in based on email and password based authentication.
  ///
  /// Returned [LoginResult] instance will have `isSuccessful` set as per
  /// the authentication result and message set to indicate the appropriate
  /// success of failure message.
  Future<LoginResult> loginWithEmail(String email, String password);

  /// Creates a new user account based on email and password.
  ///
  /// Returned [LoginResult] instance will have `isSuccessful` set as per
  /// the authentication result and message set to indicate the appropriate
  /// success of failure message.
  Future<SignupResult> signupWithEmail(
    String email,
    String displaName,
    String password,
    String confirmPassword,
  );

  /// Updates profile data of current user in database as well as [FirebaseAuth].
  Future<void> updateProfile({String displayName, String photoUrl});

  /// Adds the given Firebase Cloud Messaging (FCM) token to current user's profile.
  Future<void> addMessagingToken(String token);

  /// Logs out the current user.
  Future<void> logout();
}

enum AuthStatus {
  Uninitialized,
  Authenticating,
  Authenticated,
  Unauthenticated,
}

class LoginResult {
  final bool isSuccessful;
  final String message;

  LoginResult({
    this.isSuccessful = false,
    this.message,
  });
}

class SignupResult {
  final bool isSuccessful;
  final String message;

  SignupResult({
    this.isSuccessful = false,
    this.message,
  });
}
