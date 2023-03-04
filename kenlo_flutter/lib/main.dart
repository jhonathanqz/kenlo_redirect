import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:kenlo_flutter/app/modules/app_module.dart';

import 'app/modules/app_widget.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
  );

  ErrorWidget.builder = (details) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Erro customizado',
          ),
          Text(
            'Erro: ${details.exception}',
          ),
        ],
      ),
    );
  };

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
