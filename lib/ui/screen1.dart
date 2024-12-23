import 'package:codecraft/core/utils/connectivity_provider.dart';
import 'package:codecraft/main.dart';
import 'package:codecraft/parsing_data.dart';
import 'package:codecraft/setting/app_setting_provider.dart';
import 'package:codecraft/theme/app_theme_view.dart';
import 'package:codecraft/ui/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key, required this.routeObserver});

  final RouteObserver routeObserver;


  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with RouteAware{


  @override
  void didPush() {
    print('Page1: Called didPush');
    super.didPush();
  }

  @override
  void didPop() {
    print('Page1: Called didPop');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('Page1: Called didPopNext');
    super.didPopNext();
  }

  @override
  void didPushNext() {
    print('Page1: Called didPushNext');
    super.didPushNext();
  }

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      widget.routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final status = context.connectionStatus;
    final status1 = Provider.of<ConnectivityProvider>(context).status;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.next_plan),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Screen2(routeObserver: widget.routeObserver,),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Code Craft"),actions: [
        Consumer<AppSettingProvider>(
            builder: (context,appSetting,child) {
              return Icon(appSetting.notification? Icons.notifications:Icons.notifications_off_rounded);
            }
        ),
        Selector<AppSettingProvider,bool>(builder: (context,appSetting,child){
          return Icon(appSetting? Icons.sync:Icons.sync_disabled);
        }, selector: (context,appSetting)=>appSetting.autoSyncEnabled)

      ],
      ),
      // backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        children: [
          Text('Connection status: $status1'),
      Consumer<ConnectivityProvider>(
      builder: (context, provider, child) {
    return Text('Connection status: ${provider.status}');
    },
    ),
          Text('Connection status: $status'),
          AppSearchField(hintText: 'fpe',),
          ElevatedButton(onPressed: ()=>AppBottomSheet.show(context: context , widget: Text("Ali")), child: const Text("Ali")),
          ElevatedButton(onPressed: ()=>AppBottomSheet.showBottomSheet(context: context , widget: Text("Ali")), child: const Text("Ali")),
          const ParsingDataView(),
          const AppThemeView()
        ],
      ),
    );
  }
}
