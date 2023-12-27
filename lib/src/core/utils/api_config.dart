class ApiConfig {
  static const String baseUrl = 'http://192.168.0.136:8000';
  //Get
  static String getAllProduct() => '$baseUrl/api/product/index';
  static String getIdShowProduct(int id) => '$baseUrl/api/product/show/$id';
  static String getIdShowCollection(int id) =>
      '$baseUrl/api/collection/show/$id';
  static String getIdShowProductCollection(int id) =>
      '$baseUrl/api/productcollection/show/$id';
  static String getAvailableCoupon() => '$baseUrl/api/coupon/available';
  static String getAvailableImageSlider() =>
      '$baseUrl/api/image-slider/available';
  static String getOrderIdShowInvoice(int orderId) =>
      '$baseUrl/api/invoice/show/$orderId';
  static String getKeySearchProduct(String keySearch) =>
      '$baseUrl/api/product/search/$keySearch';
  static String getVnpayReturn() => '$baseUrl/api/vnpay-return';
  static String getIndexProductImage(int id) =>
      '$baseUrl/api/product-image/index/$id';
  //Post
  static String postLogin() => '$baseUrl/api/login';
  static String postRegister() => '$baseUrl/api/register';
  static String postLoginWithToken() => '$baseUrl/api/login-with-token';
  static String postCreateInvoice() => '$baseUrl/api/invoice/create';

  static String postUpdateCart() => '$baseUrl/api/cart/update';
  static String postShowCart() => '$baseUrl/api/cart/show';
  static String postShowByTrackingInvoice() =>
      '$baseUrl/api/invoice/show-by-tracking/';
  static String postGetNoti() => '$baseUrl/api/get-noti';
  static String postReadNoti() => '$baseUrl/api/read-noti';
  static String postVnPayReturn(String keySearch) =>
      '$baseUrl/api/product/search/$keySearch';

  //Put
  static String putTrackingStatusInvoice() =>
      '$baseUrl/invoice/tracking-status';
}
