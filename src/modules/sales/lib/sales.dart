library sales;

import 'package:flutter_modular/flutter_modular.dart';
import 'package:sales/pages/checkout_page.dart';
import 'package:sales/pages/sales_page.dart';

class SalesModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SalesPage()),
        ChildRoute('/checkout', child: (context, args) => const CheckoutPage()),
      ];
}
