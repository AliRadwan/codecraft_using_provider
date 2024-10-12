import 'package:codecraft/users/repositories/i_user_type.dart';
import 'package:flutter/foundation.dart';

class Owner implements UserType{
  @override
  void getUserType() {
    if (kDebugMode) {
      print("i'm Owner");
    }
  }

}

