// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
// import 'package:flutter_getit_exemple/pages/home/home_page.dart';
import 'package:flutter_getit_exemple/pages/home/home_route.dart';
// import 'package:flutter_getit_exemple/pages/home/home_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Envolve o MaterialApp para ter Dependencias Globais
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton((i) => UserModel(name: 'Guarapuava-Pr'))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeRoute(),
      ),
    );
  }
}

//Exemplo para disponibilizar dentro de bindingBuilder
class UserModel {
    String name;
  UserModel({
    required this.name,
  });
  }
