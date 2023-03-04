import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:kenlo_flutter/app/modules/splash/presentation/mobx/splash_store.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();

  @override
  void initState() {
    store.dismissSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepOrange,
              child: const Center(
                child: Icon(Icons.home),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
