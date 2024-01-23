abstract class AppLinks {
  // server link
  static const String serverLink = "http://192.168.1.5/fullstoreapp";
  // authentication links
  static const String signUpLink = "$serverLink/auth/sginup.php";
  static const String loginLink = "$serverLink/auth/login.php";
  static const String verifyCodeLink = "$serverLink/auth/verifycode.php";
  static const String testLink = "$serverLink/test.php";
  // forget password links
  static const String forgrtPassVerifyCodeLink =
      "$serverLink/forgetpassword/verifycode.php";
  static const String resetPassLink =
      "$serverLink/forgetpassword/resetpassword.php";
  static const String checkEmailLink =
      "$serverLink/forgetpassword/checkemail.php";
}
