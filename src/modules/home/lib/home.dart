library home;

import 'package:flutter_modular/flutter_modular.dart';
import 'package:home/presentation/ui/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    // Bind.factory((i) => RepoX()),
    // Bind.factory((i) => GetAccount(i.get<Uno>())),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage()),
  ];
}
