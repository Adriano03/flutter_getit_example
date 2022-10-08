import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_exemple/pages/home/home_page.dart';
import 'package:flutter_getit_exemple/pages/home/home_controller.dart';

//Flutter getit utilizado pela academia do flutter
class HomeRoute extends FlutterGetItPageRoute {
  const HomeRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<HomeController>((i) => HomeController()),
      ];

  @override
  WidgetBuilder get page =>
      (context) => HomePage(controller: context.get<HomeController>());
}
