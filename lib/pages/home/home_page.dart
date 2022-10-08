import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_exemple/main.dart';
// import 'package:flutter_getit/flutter_getit.dart';

import 'home_controller.dart';

//Getit tradicional
// import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;

  const HomePage({
    super.key,
    required this.controller,
  });
  //  {
  //   Flutter getit trad não precisa setar no construtor
  //    GetIt.I.registerLazySingleton(() => HomeController());
  // }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Modo tradicional
    // GetIt.I.get<HomeController>().init();

    //Modo Academia Flutter
    widget.controller.init();
  }

  //Como Flutter da Acad Flutter dispose é feito automaticamente
  // @override
  // void dispose() {
  //   GetIt.I.unregister<HomeController>();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Modo GetitFlutter
          widget.controller.changename('Nome Alterado');
          // Modo Getit Trad
          // GetIt.I.get<HomeController>().changename('Nome Alterado');
        },
      ),
      body: AnimatedBuilder(
          //Modo Trad
          // animation: GetIt.I.get<HomeController>(),
          //Modo GetitFlutter
          animation: widget.controller,
          builder: (_, __) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //Modo Trad
                    // GetIt.I.get<HomeController>().nome,
                    //Modo GetitFlutter
                    widget.controller.nome,
                  ),
                  //Pegar o nome que é uma variavel global
                  Text(context.get<UserModel>().name),
                ],
              ),
            );
          }),
    );
  }
}
