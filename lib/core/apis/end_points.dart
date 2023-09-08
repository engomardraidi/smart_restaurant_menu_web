class EndPoints {
  static const String baseUrl = 'https://demand.robaexpress.com/api';
  static const String register = '$baseUrl/register';
  static const String login = '$baseUrl/login';
  static const String logout = '$baseUrl/logout';
  static const String cities = '$baseUrl/city1';
  static const String sendResetLinkPassword = '$baseUrl/password/forget';
  static const String resetPassword = '$baseUrl/password/reset';
  static const String changePassword = '$baseUrl/password/change';
  static const String addPackage = '$baseUrl/createorders';
  static const String profile = '$baseUrl/profile';
  static const String updateProfile = '$baseUrl/change/profile';
  static const String packages = '$baseUrl/orders';
  static const String driverPackages = '$baseUrl/indexdman';
  static const String updateOrderStatus = '$baseUrl/updateordersdman';
  static const String getTotalPackages = '$baseUrl/orders/count/orders';
  static const String getTotalDelayPackages = '$baseUrl/orders/count/delay';
  static const String getReadyCollections = '$baseUrl/orders/countmoney';
  static const String getAllCollections = '$baseUrl/orders/countmoneyorders';
  static const String getTodayPackages = '$baseUrl/orders/ordersnow';
  static const String cancelOrder = '$baseUrl/orders/cancelled';
}
