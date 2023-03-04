import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:kenlo_flutter/app/modules/home/presentation/mobx/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  void initState() {
    store.getCities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: store.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cidades: '),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          final _city = store.cityResponse!.cities[index];
                          return ListTile(
                            title: Text(_city.city),
                            subtitle: Text(_city.lat + ', ' + _city.long),
                          );
                        },
                      ),
                    )
                  ],
                ),
        );
      },
    );
  }
}
