import 'package:codecraft/setting/app_setting_provider.dart';
import 'package:codecraft/theme/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppThemeView extends StatelessWidget {
  const AppThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: [
          Consumer<AppThemeProvider>(builder:(context,appTheme,child){
            return SwitchListTile( title: const Text("DarkTheme",),value:appTheme.isDark , onChanged: (value){
              appTheme.toggleTheme();
            });
          } ),

          Consumer<AppSettingProvider>(builder: (context,appSetting,child){
            return SwitchListTile(title: Text("Enable Notification"),value: appSetting.notification, onChanged: (value){
              appSetting.toggleNotification();
            });
          })
        ],
      ),
    );
  }
}
