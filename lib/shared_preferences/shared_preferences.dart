import 'package:shared_preferences/shared_preferences.dart';

class Jollibee_Order_Preferences {
  Future<void> setOrderName(orderName) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderName', orderName);
  }
}
