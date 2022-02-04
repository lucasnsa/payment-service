library digital_account;

import 'package:flutter_modular/flutter_modular.dart';
import 'package:uno/uno.dart';

class NetWorkService extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => Uno(), export: true),
      ];
}
