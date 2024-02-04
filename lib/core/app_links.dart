abstract class AppLinks {
  // server link
  static const String serverLink = "http://192.168.1.5/fullstoreapp";
  // authentication links
  static const String signUpLink = "$serverLink/auth/sginup.php";
  static const String loginLink = "$serverLink/auth/login.php";
  static const String verifyCodeLink = "$serverLink/auth/verifycode.php";
  static const String resendVerifyCodeLink =
      "$serverLink/auth/resendverifycode.php";
  static const String testLink = "$serverLink/test.php";
  // forget password links
  static const String forgrtPassVerifyCodeLink =
      "$serverLink/forgetpassword/verifycode.php";
  static const String resetPassLink =
      "$serverLink/forgetpassword/resetpassword.php";
  static const String checkEmailLink =
      "$serverLink/forgetpassword/checkemail.php";

//home links
  static const String homeLink = "$serverLink/home.php";
  static const String imageCategoriesLink = "$serverLink/upload/categories";
  static const String imageItemsLink = "$serverLink/upload/items";

// items links
  static const String itemsLink = "$serverLink/items/items.php";

// favorites links
  static const String addToFavoritesLink = "$serverLink/favorite/add.php";
  static const String removeFromFavoritesLink =
      "$serverLink/favorite/remove.php";
  static const String viewFavoritesLink = "$serverLink/favorite/view.php";
}
