import 'package:codecraft/parsing_data.dart';
import 'package:codecraft/setting/app_setting_provider.dart';
import 'package:codecraft/theme/app_theme_provider.dart';
import 'package:codecraft/theme/app_theme_view.dart';
import 'package:codecraft/ui/screen1.dart';
import 'package:codecraft/users/repositories/i_user_type.dart';
import 'package:codecraft/users/repositories/implementation/guest_Type.dart';
import 'package:codecraft/users/repositories/implementation/owner_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  final RouteObserver<ModalRoute> routeObserver =  RouteObserver<ModalRoute>();

  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider(create: (_)=> AppThemeProvider()),
      ChangeNotifierProvider(create: (_)=> AppSettingProvider()),
    ],
      child: MyApp(routeObserver: routeObserver),
    )
     );
  // example if you have different type of user in your app
  UserType userType1 = Owner();
  UserType userType2 = Guest();
  getUserType(userType1);
  getUserType(userType2);
}

void getUserType(UserType userType){
  userType.getUserType();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.routeObserver});

  final RouteObserver routeObserver;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeProvider>(
      builder: (context,appTheme,child) {
        return MaterialApp(
          theme: appTheme.currentTheme,
          navigatorObservers: [routeObserver],
          home:  Screen1(routeObserver: routeObserver,)
        );
      });
  }
}

