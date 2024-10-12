import 'package:codecraft/mock_data.dart';
import 'package:codecraft/parsing_data.dart';
import 'package:codecraft/setting/app_setting_provider.dart';
import 'package:codecraft/theme/app_theme_provider.dart';
import 'package:codecraft/theme/app_theme_view.dart';
import 'package:codecraft/users/repositories/i_user_type.dart';
import 'package:codecraft/users/repositories/implementation/guest_Type.dart';
import 'package:codecraft/users/repositories/implementation/owner_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'models/book.dart';

void main() {
  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider(create: (_)=> AppThemeProvider()),
      ChangeNotifierProvider(create: (_)=> AppSettingProvider()),
    ],
      child: const MyApp(),
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeProvider>(
      builder: (context,appTheme,child) {
        return MaterialApp(
          theme: appTheme.currentTheme,
          home:  Scaffold(
            appBar: AppBar( 
              title: const Text("Code Craft"),actions: [
                Consumer<AppSettingProvider>(
                  builder: (context,appSetting,child) {
                    return Icon(appSetting.notification? Icons.notifications:Icons.notifications_off_rounded);
                  }
                )
            ],
            ),
            // backgroundColor: Colors.deepOrangeAccent,
            body: const Column(
              children: [
                ParsingDataView(),
                AppThemeView()
              ],
            ),
          ),
        );
      });
  }
}

