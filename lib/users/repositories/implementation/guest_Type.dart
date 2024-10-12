import 'package:codecraft/users/repositories/i_user_type.dart';
import 'package:flutter/foundation.dart';

class Guest implements UserType{
  @override
  void getUserType() {
    if (kDebugMode) {
      print("i'm Guest");
    }  }

}