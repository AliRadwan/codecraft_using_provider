import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.routeObserver});
  final RouteObserver routeObserver;



  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with RouteAware {

  @override
  void didPush() {
    print('Page2: Called didPush');
    super.didPush();
  }

  @override
  void didPop() {
    print('Page2: Called didPop');
    super.didPop();
  }

  @override
  void didPopNext() {
    print('Page2: Called didPopNext');
    super.didPopNext();
  }

  @override
  void didPushNext() {
    print('Page2: Called didPushNext');
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: const Center(
        child: Text(
          'Screen 2',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );  }
}
