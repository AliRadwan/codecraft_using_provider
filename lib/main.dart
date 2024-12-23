import 'package:codecraft/core/utils/connectivity_provider.dart';
import 'package:codecraft/locator/locator.dart';
import 'package:codecraft/parsing_data.dart';
import 'package:codecraft/setting/app_setting_provider.dart';
import 'package:codecraft/theme/app_theme_provider.dart';
import 'package:codecraft/theme/app_theme_view.dart';
import 'package:codecraft/ui/screen1.dart';
import 'package:codecraft/users/repositories/i_user_type.dart';
import 'package:codecraft/users/repositories/implementation/guest_Type.dart';
import 'package:codecraft/users/repositories/implementation/owner_type.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
void main() {
  setUp();
  final RouteObserver<ModalRoute> routeObserver =  RouteObserver<ModalRoute>();

  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider(create: (_)=> AppThemeProvider()),
      ChangeNotifierProvider(create: (_)=> AppSettingProvider()),
      ChangeNotifierProvider(create: (_) => ConnectivityProvider()),
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


class AppBottomSheet {
  static Future<void> show({
    required BuildContext context,
    required Widget widget,
    bool isNested = false,
    bool isDraggable = false,
    bool enableDrag = true,
    EdgeInsets? bottomPadding,
    double? minHeight,
    double? maxHeight,
    bool isScrollControlled = true,
  }) {
    final BuildContext sheetContext = isNested
        ? Navigator.of(context, rootNavigator: true).overlay!.context
        : context;

    return showModalBottomSheet(
      context: sheetContext,
      isDismissible: true,
      enableDrag: isDraggable,
      backgroundColor: Colors.white,
      barrierColor: Colors.black54,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Material(
        child: Padding(
          padding: bottomPadding ??
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: widget,
        ),
      ),
    );
  }
  static void showBottomSheet({required BuildContext context, required Widget widget,
      bool isDismissible = false,
        bool enableDrag = true,
        EdgeInsets? bottomPadding}) {
    showModalBottomSheet<Widget>(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.2,
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      isScrollControlled: true,
      elevation: 5,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) => Padding(
        padding: bottomPadding ??
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: widget,
      ),
    );}
}


class AppSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool autoFocus;
  final InputBorder? border;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;

  const AppSearchField({
    required this.hintText,
    this.onChanged,
    super.key,
    this.controller,
    this.onClear,
    this.prefixIcon = Icons.search,
    this.suffixIcon,
    this.autoFocus = false,
    this.border,
    this.validator,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        controller: controller,
        autofocus: autoFocus,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon ??
              (controller != null && controller!.text.isNotEmpty
                  ? IconButton(
                icon: Icon(Icons.clear),
                onPressed: onClear,
              )
                  : null),
          border: border ?? OutlineInputBorder(),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
