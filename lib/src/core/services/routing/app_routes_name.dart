enum APP_PAGE {
  welcome,
  login,
  signup,
  home,
  product,
  productImages,
  error,
  category,
  notification,
  user,
  search,
  cart,
  map
}

extension AppPageExtension on APP_PAGE {
  String get toPath {
    switch (this) {
      case APP_PAGE.welcome:
        return "/welcome";
      case APP_PAGE.login:
        return "/login";
      case APP_PAGE.signup:
        return "/signup";
      case APP_PAGE.home:
        return "/home";
      case APP_PAGE.product:
        return "product/:index";
      case APP_PAGE.productImages:
        return "images";
      case APP_PAGE.error:
        return "/error";
      case APP_PAGE.category:
        return "/category";
      case APP_PAGE.notification:
        return "/notification";
      case APP_PAGE.user:
        return "/user";
      case APP_PAGE.search:
        return "/search";
      case APP_PAGE.cart:
        return "/cart";
      case APP_PAGE.map:
        return "/map";
      default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case APP_PAGE.welcome:
        return "WELCOME";
      case APP_PAGE.login:
        return "LOGIN";
      case APP_PAGE.signup:
        return "SIGNUP";
      case APP_PAGE.home:
        return "HOME";
      case APP_PAGE.product:
        return "PRODUCT";
      case APP_PAGE.productImages:
        return "IMAGES";
      case APP_PAGE.error:
        return "ERROR";
      case APP_PAGE.category:
        return "CATEGORY";
      case APP_PAGE.notification:
        return "NOTIFICATION";
      case APP_PAGE.user:
        return "USER";
      case APP_PAGE.search:
        return "SEARCH";
      case APP_PAGE.cart:
        return "CART";
      case APP_PAGE.map:
        return "MAP";
      default:
        return "WELCOME";
    }
  }

  String get toParameter {
    switch (this) {
      case APP_PAGE.product:
        return "index";
      case APP_PAGE.productImages:
        return "init-image";
      default:
        return "index";
    }
  }
}
